Rails.application.routes.draw do
  get 'reviews/new'

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]
end
