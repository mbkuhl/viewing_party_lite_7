Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "landing#index"

  get "/register", to: "users#new"
  post "/register", to: "users#create"
  
  get "/login", to: "users#login_form"
  post "/login", to: "users#login_user"
  post "/logout", to: "users#log_out_user"
  
  get "/dashboard", to: "users#show"

  get "/users/:user_id/discover", to: "users/movies#discover"
  get "/users/:user_id/movies", to: "users/movies#index"
  get "/users/:user_id/movies/:movie_id", to: "users/movies#show"

  get "/users/:user_id/movies/:movie_id/viewing-party/new", to: "parties#new"
  post "/users/:user_id/movies/:movie_id/viewing-party", to: "parties#create"
end
