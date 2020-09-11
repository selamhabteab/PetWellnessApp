Rails.application.routes.draw do
  resources :pets
  devise_for :users
  get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
  root to: 'home#index'
  get '/sendpet/:email/:id', to: 'pets#send_email', as: 'send_email'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end