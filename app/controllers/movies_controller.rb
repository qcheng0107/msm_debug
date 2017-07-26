class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie = Movie.find(params[:id])
    @title = movie.title
    @year = movie.year
    @duration = movie.duration
    @description = movie.description
    @image_url = movie.image_url
    @director_id = movie.director_id
  end

  def new_form
    render("new_form")
  end

  def create_row
    movie = Movie.new
    movie.title = params[:the_title]
    movie.year = params[:the_year]
    movie.duration = params[:the_duration]
    movie.description = params[:the_description]
    movie.image_url = params[:the_image_url]
    movie.director_id = params[:the_director_id]
    @id = movie.id
    movie.save

    # @title = movie.title
    # @year = movie.year
    # @duration = movie.duration
    # @description = movie.description
    # @image_url = movie.image_url
    # @director_id = movie.director_id
    render("show")
  end

  def edit_form
    movie = Movie.find(params[:id])
    @id = movie.id
    @title = movie.title
    @year = movie.year
    @duration = movie.duration
    @description = movie.description
    @image_url = movie.image_url
    @director_id =movie.director_id
    movie.save
  end

  def update_row
    movie = Movie.find(params[:id])
    @id = movie.id
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.director_id = params[:director_id]
    movie.save
    @title = movie.title
    @year = movie.year
    @duration = movie.duration
    @description = movie.description
    @image_url = movie.image_url
    @director_id = movie.director_id
    render("show")
  end

  def destroy
    movie = Movie.find(params[:id])
    @title = movie.title
    movie.destroy
  end
end
