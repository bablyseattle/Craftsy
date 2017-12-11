class ReviewsController < ApplicationController

  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end


  def destroy
    @review.destroy
    @product = Product.find(params[:product_id])

    redirect_to product_path(@product)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end


  private

  def review_params
    params.require(:review).permit(:product_id, :content, :user_id)
  end

end