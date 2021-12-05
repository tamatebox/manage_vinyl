class Discog < ApplicationRecord
  before_save :set_json
  validates :id, presence: true, length: { maximum: 200 }

  private  # 以下のメソッドは外部から呼び出さないのでprivateにする

  def set_json
    self.d_json = descog_json if will_save_change_to_url?
  end

  def discog_json
    url = "https://api.discogs.com/releases/#{id}"
    uri = URI.parse(url)
    responce = Net::HTTP.get(uri)
    JSON.parse(responce)
  end
