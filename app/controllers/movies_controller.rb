class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movie.all
  end

  def show
    # @movie = movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: 'Your movie was successfully created!'
    else
      render :new
    end
  end

  def edit
    # @movie = movie.find(params[:id])
  end

  def update
    # @movie = movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movie_path(@movie), notice: 'Your movie was successfully updated!'
    else
      render :new
    end
  end

  def destroy
    # @movie = movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, notice: 'Your movie was successfully destroyed!'
  end

  private

  # strong methods:

  def movie_params
    params.require(:movie).permit(:name)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
