Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :articles do
    resources :comments
  end

  get '/partial_page', to: 'articles#page'

  root 'articles#index'
end
