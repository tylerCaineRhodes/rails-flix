class MoviesController < ApplicationController
  def index
    @movies = ["random", "list", "of", "movies"]
  end
end
