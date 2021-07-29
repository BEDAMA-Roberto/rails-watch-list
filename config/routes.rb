Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   # view
  # resources :list, except: []
  # get 'lists', to: 'lists#index'
  # get 'lists/index', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show'
  # get 'lists/new', to: 'lists#new'
  # post 'list', to: 'lists#create'
  root to: "lists#index"
    resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end

