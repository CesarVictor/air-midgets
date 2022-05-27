class ReviewsController < ApplicationController
  def create
    @midget = Midget.find(params[:midget_id])
    @review = Review.new(review_params)
    @review.midget = @midget
    authorize @review
    respond_to do |format|
      if @review.save
        format.html { redirect_to midget_path(@midget) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "midgets/show" }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
