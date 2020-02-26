Rails.application.routes.draw do
  root to: "topics#index"

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :topics
end
