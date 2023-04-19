class CommentsController < ApplicationController
  before_action :set_place

  def create
    @comment = @place.comments.create(comment_params)
    redirect_to @place
  end

  def destroy
    @comment = @place.comments.find(params[:id])
    @comment.destroy
    redirect_to @place
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
