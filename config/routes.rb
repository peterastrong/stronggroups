Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#landing"

  mount ActionCable.server => "/cable"

  #other pages
  get "/landing", to: "pages#landing"
  get "/about", to: "pages#about"
  
  #users
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/user", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  namespace :api do
    namespace :v1 do 
      #users api
      get "/users", to: "users#index"
      get '/users/:id', to: "users#show"
      post "/users", to: "users#create"

      #messages api
      get "/messages", to: "messages#index"
      get "/messages/:id", to: "messages#show"
      post "/messages", to: "messages#create"
    end 
  end 

  #sessions 

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  #events

  get "/events", to: "events#index"
  get "/events/new", to: "events#new"
  post "/events", to: "events#create"
  get "/events/:id", to: "events#show"
  get "/events/:id/edit", to: "events#edit"
  patch "/events/:id", to: "events#update"
  delete "/events/:id", to: "events#destroy"

  #groups
  get "groups", to: "groups#index"
  get "/groups/new", to: "groups#new"
  post "/groups", to: "groups#create"
  get "/groups/:id", to: "groups#show"
  get "/groups/:id/edit", to: "groups#edit"
  patch "/groups", to: "groups#update"
  delete "/groups/:id", to: "groups#destroy"

  #subgroups 
  get "subgroups", to: "subgroups#index"
  get "/subgroups/new/:group_id", to: "subgroups#new"
  post "/subgroups", to: "subgroups#create"
  get "/subgroups/:id", to: "subgroups#show"
  get "/subgroups/:id/edit", to: "subgroups#edit"
  patch "/subgroups", to: "subgroups#update"
  delete "/subgroups/:id", to: "subgroups#destroy"

  #user_groups
  get "/user_groups/new", to: "user_groups#new"
  post "/user_groups", to: "user_groups#create"

  #user_subgroups
  get "/user_subgroups/new", to: "user_groups#new"
  post "/user_subgroups", to: "user_subgroups#create"

  #user_events
  get "/user_events/new", to: "user_events#new"
  post "/user_events", to: "user_events#create"

end