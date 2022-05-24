Rails.application.routes.draw do
  root to: 'pages#home'
  resources :midgets
  resources :users do
    resources :reservations, exept: [:delete]
  end
  delete 'reservation/:id', to: 'reservations#destroy'
end
