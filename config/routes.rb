# comment
Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end
