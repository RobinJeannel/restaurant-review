class ReviewsController < ApplicationController
  def create #post
    @restaurant = Resto.find(params[:id])
    @review = (review_params)
    redirect_to restaurants_path
  end

  private
  def task_params
    params.require(:review).permit(:rating)
  end

end
