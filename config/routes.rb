Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  resources :bookmarks
  root 'bookmarks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :bookmarks, only: %i[index]
  end
end
