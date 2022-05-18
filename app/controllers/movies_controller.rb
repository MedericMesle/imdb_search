class MoviesController < ApplicationController

  def index
    @movies = Movie.where(title: params[:query])
  end
end
