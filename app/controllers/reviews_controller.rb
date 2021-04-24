class ReviewsController < ApplicationController
  before_action :find_movie, only: [:new,:create]

  def new
    @review = Review.new
  end

  def create
    #we need to fetch the movie from the params
    @review = Review.new(review_params)
    @review.movie = @movie
    if @review.save
     redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @movie = @review.movie
    @review.destroy
    redirect_to movie_path(@movie)
  end

  private

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:content)

  end


end
