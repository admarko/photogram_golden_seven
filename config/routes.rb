Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })


  #CREATE
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/create_photo",     { :controller => "photos", :action => "create_row" })

  #READ
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  #UPDATE
  get("/photos/:id/edit",  { :controller => "photos", :action => "edit_form" })

  #DELETE
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })



end
