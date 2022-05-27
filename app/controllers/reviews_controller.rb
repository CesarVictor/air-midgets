class ReviewsController < ApplicationController
  def create
    @midget = Midget.find(params[:midget_id])
    @review = Review.new(review_params)
    @review.midget = @midget
    if @review.save
      redirect_to midget_path(@midget)
    else
      render 'midgets/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
