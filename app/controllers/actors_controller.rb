class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    actor = Actor.find(params[:id])
    @id = actor.id
    @dob = actor.dob
    @name = actor.name
    @bio = actor.bio
    @image_url = actor.image_url
  end

  def new_form
    render("new_form")
  end

  def create_row
    actor = Actor.new
    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]

    actor.save
    @id = actor.id
    @dob = actor.dob
    @name = actor.name
    @bio = actor.bio
    @image_url = actor.image_url

    render("show")
  end

  def edit_form
    actor = Actor.find(params[:id])
    @id = actor.id
    @dob = actor.dob
    @name = actor.name
    @bio = actor.bio
    @image_url = actor.image_url

  end

  def update_row
    actor = Actor.find(params[:id])

    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]

    actor.save
    @id = actor.id
    @dob = actor.dob
    @name = actor.name
    @bio = actor.bio
    @image_url = actor.image_url
    render("show")
    #redirect '/actors/' + actor.id
  end

  def destroy
    actor = Actor.find(params[:id])
    @name = actor.name
    actor.destroy
  end
end
