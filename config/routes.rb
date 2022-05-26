Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :midgets do
    resources :reviews, only: %i[new create edit update show index]
    resources :reservations
  end
  delete 'review/:id', to: 'reviews#destroy'
  resources :users
end
