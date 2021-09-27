Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'users', action: :getUsers, controller: :users
    post 'user', action: :addUser, controller: :users
    get 'user/:id', action: :showUser, controller: :users
  end
end
