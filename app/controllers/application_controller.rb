class ApplicationController < ActionController::Base
  before_action :set_search
  def set_search
    @search = Vinyl.ransack(params[:q])
    @vinyls = @search.result
  end
end
