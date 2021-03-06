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
    @id = params["id"]
    p = Photo.find(@id).destroy
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @id = params["id"]
    @caption = Photo.find(@id).caption
    @source =  Photo.find(@id).source
    render("photos/edit.html.erb")
  end

  def update_row
    @id = params["id"]
    @source = params[:the_source]
    @caption = params[:the_caption]

    p = Photo.find(@id)
    p.source = @source
    p.caption = @caption
    p.save

    redirect_to("/photos/#{@id}")
  end

end
