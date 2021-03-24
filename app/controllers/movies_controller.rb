# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    @movies = Movie.released
  end

  def show
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie succesfully updated!"
    else
      render :edit
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to @movie, notice: "Movie succesfully created!"
    else
      render :new
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, danger: "WTF...you just deleted #{@movie.title}!!!"
  end
end

private

def movie_params
  params.require("movie").permit(
    :title, :description, :rating, :released_on, :total_gross, :duration,
    :director, :image_file_name )
 end

def set_movie
  @movie = Movie.find(params[:id])
end

