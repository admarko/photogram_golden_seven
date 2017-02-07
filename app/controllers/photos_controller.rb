class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render("photos/index.html.erb")
  end

  def show
    @the_photo = Photo.find(params[:some_id])

    render("photos/show.html.erb")
  end
end
