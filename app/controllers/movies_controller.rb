class MoviesController < ApplicationController
  def index
      if params[:query].present?
          @movies = Movie.where("title @@ :query OR syllabus @@ :query", query: "%#{params[:query]}%")
      else
          @movies = Movie.all
      end
  end
end
