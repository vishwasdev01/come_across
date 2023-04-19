class PicturesController < ApplicationController
  before_action :set_place

  def create
    @picture = @place.pictures.create(picture_params)
    redirect_to @place
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def picture_params
    params.require(:picture).permit(:image_url)
  end
end
