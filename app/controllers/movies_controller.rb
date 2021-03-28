# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show]

  def index
    @movies = Movie.send(movies_filter)
  end

  def show
    @genres = @movie.genres
    @fans = @movie.fans
    @favorite = current_user.favorites.find_by(movie_id: @movie.id) if current_user
  end

  def edit; end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie succesfully updated!'
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
      redirect_to @movie, notice: 'Movie succesfully created!'
    else
      render :new
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, danger: "WTF...you just deleted #{@movie.title}!!!"
  end

  private

  def movie_params
    params.require('movie').permit(
      :title, :description, :rating, :released_on, :total_gross, :duration,
      :director, :image_file_name, genre_ids: []
    )
  end

  def set_movie
    @movie = Movie.find_by(slug: params[:id])
  end

  def movies_filter
    if params[:specification].in? %w(upcoming recent hits flops)
      params[:specification]
    else
      :released
    end
  end
end
