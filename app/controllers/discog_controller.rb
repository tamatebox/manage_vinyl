
class DiscogController < ApplicationController
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
end