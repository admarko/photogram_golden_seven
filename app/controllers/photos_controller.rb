class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render("photos/index.html.erb")
  end

  def show
    @id = params["id"]
    @source = Photo.find(@id).source
    @caption = Photo.find(@id).caption

    render("photos/show.html.erb")
  end

  def new_form
    render("photos/create.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    p = Photo.find(params["id"])
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

end
