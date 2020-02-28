Rails.application.routes.draw do
  root to: "topics#index"

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :topics, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
  resources :responses, only: [:create]
end
