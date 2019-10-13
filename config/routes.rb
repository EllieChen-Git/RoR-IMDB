Rails.application.routes.draw do

  #GET: all movies
  get "/movies", to: "movies#index", as: "movies"

  #CREATE: all movies
  post "/movies", to: "movies#create"
  #GET/FORM to create movies
  get "/movies/new", to: "movies#new", as: "new_movie"

  #GET/FORM to edit
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie" 

  #SHOW
  get "/movies/:id", to: "movies#show", as: "movie"

  #PUT & PATCH
  put "/movies/:id", to: "movies#update"
  patch "/movies/:id", to: "movies#update"
  
  #DELETE
  delete "/movies/:id", to: "movies#destroy"

end
