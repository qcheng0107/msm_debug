class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    director = Director.find(params[:id])
    @id = director.id
    @dob = director.dob
    @name = director.name
    @bio = director.bio
    @image_url = director.image_url
  end

  def new
    render("new_form")
  end

  def create_row
    director = Director.new
    director.dob = params[:dob]
    director.name = params[:name]
    director.bio = params[:bio]
    director.image_url = params[:image_url]

    director.save
    @id = director.id
    @dob = director.dob
    @name = director.name
    @bio = director.bio
    @image_url = director.image_url

    render("show")
  end

  def edit_form
    director = Director.find(params[:id])
    @id = director.id
    @dob = director.dob
    @name = director.name
    @bio = director.bio
    @image_url = director.image_url
  end

  def update_row
    director = Director.find(params[:id])

    director.dob = params[:dob]
    director.name = params[:name]
    director.bio = params[:bio]
    director.image_url = params[:image_url]

    director.save
    
    @id = director.id
    @dob = director.dob
    @name = director.name
    @bio = director.bio
    @image_url = director.image_url

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
