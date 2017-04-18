Rails.application.routes.draw do
  resources :users, only: [:create, :index, :show, :update, :destroy]
  # get 'users' => 'users#index'
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new', :as => 'new_user'
  # get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  # get 'users/:id' => 'users#show', :as => 'user'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'

  resources :artworks, only: [:create, :index, :show, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]
end
