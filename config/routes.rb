Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #users
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

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

  get "/groups/new", to: "groups#new"
  post "/groups", to: "groups#create"
  get "/groups/:id", to: "groups#show"
  get "/groups/:id/edit", to: "groups#edit"
  patch "/groups", to: "groups#update"
  delete "/groups/:id", to: "groups#destroy"

  #subgroups 
  get "/subgroups/new", to: "subgroups#new"
  post "/subgroups", to: "subgroups#create"
  get "/subgroups/:id", to: "subgroups#show"
  get "/subgroups/:id/edit", to: "subgroups#edit"
  patch "/subgroups", to: "subgroups#update"
  delete "/subgroups/:id", to: "subgroups#destroy"

  #user_groups
  get "/user_groups/new", to: "user_groups#new"
  post "/user_groups", to: "user_groups#create"


end
