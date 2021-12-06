class DiscogsController < ApplicationController
  def create
    if @discog.create(discog_params)
      redirect_to discog_path(@discog)
    else
      render :new
    end
  end

  def update
    @discog = discog.find(params[:id])
    if @discog.update(discog_params)
      redirect_to discog_path(@discog)
    else
      render :edit
    end
  end

  private

  def discog_params
    params.require(:discog).permit(:url)
  end

  def show
    # URIを設定
    uri = URI.parse("https://api.discogs.com/releases/#{params[:id]}")
  
    @query = uri.query
  
    response = Net::HTTP.start(uri.host, uri.port) do |http|
      # 接続時の待機時間
      http.open_timeout = 10
      # ブロックする最大秒数
      http.read_timeout = 20
      # APIをリクエスト
      http.get(uri.request_uri)
    end
    # 例外処理
    begin
      @result = JSON.parse(response.body)
  
      @id = @result[0]["id"]
      @artists = @result[0]["artists"]["name"]
      @labels = @result[0]["labels"]["name"]
      @zipcode = @result[0]["title"]
      @county = @result[0]["county"]
  
      # エラー処理
    rescue => e
      @message = "e.message"
    end
  end
end