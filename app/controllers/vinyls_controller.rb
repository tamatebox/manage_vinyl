class VinylsController < ApplicationController
  before_action :set_vinyl, only: [ :show, :edit, :update, :destroy ]
  before_action :set_q, only: [:index, :search]
  # before_action :confirm, only: [:destroy]
  # protect_from_forgery :except => [:destroy]
  # before_action :genre_string, only: [:create, :update]
  # before_action :star_string, only: [:create, :update] 
  # GET /vinyls or /vinyls.json
  def index
    @q = Vinyl.ransack(params[:q])
    @q.sorts = [ 'compilation', 'alphabet_artist', 'album'] if @q.sorts.empty?
    @vinyls = @q.result
    @vinyls_size = @vinyls.size
    @per_page_num = 50
    @vinyls = @vinyls.paginate(page: params[:page], per_page: @per_page_num)
    @page = params[:page]
  end

  # GET /vinyls/1 or /vinyls/1.json
  def show
  end

  # GET /vinyls/new
  def new
    @vinyl = Vinyl.new
    @song = @vinyl.songs.build
  end

  # GET /vinyls/1/edit
  def edit
  end

  # POST /vinyls or /vinyls.json
  def create
    @vinyl = Vinyl.new(vinyl_params)
    @page = params[:page]
    respond_to do |format|
      if @vinyl.save
        format.html { redirect_to @vinyl, notice: "Vinyl was successfully created." }
        format.json { render :show, status: :created, location: @vinyl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinyls/1 or /vinyls/1.json
  def update
    @page = params[:page]
    respond_to do |format|
      if @vinyl.update(vinyl_params)
        format.html { redirect_to @vinyl, notice: "Vinyl was successfully updated." }
        format.json { render :show, status: :ok, location: @vinyl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinyls/1 or /vinyls/1.json
  def destroy
    @page = params[:page]
    @vinyl.destroy
    respond_to do |format|
      format.html { redirect_to vinyls_url, notice: "Vinyl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def genre_string
  #   if(params[:vinyl][:genre])
  #     params[:vinyl][:genre] = params[:vinyl][:genre].join("/")
  #   end
  # end

  # def star_string
  #   params[:vinyl][:star] = params[:vinyl][:str].join("/")
  # end

  def vinyl_list
    @vinyls = Vinyl.paginate(page: params[:page], per_page: 100)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinyl
      @page = params[:page]
      @vinyl = Vinyl.find(params[:id])
    end

    def set_q
      @q = Vinyl.ransack(params[:q])
    end

    # Only allow a list of trusted parameters through.
    def vinyl_params
      params.require(:vinyl).permit(
        :artist, :alphabet_artist, :album, :year, :label, 
        :country, :size, :star, :compilation, :review, :genre, 
        :catalog, :spotify,
        songs_attributes:[:id, :title, :vinyl_id, :bpm, :track, :_destroy])
    end
end
