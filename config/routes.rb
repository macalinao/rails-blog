Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :articles, except: :index do
    resources :comments
  end

  root 'articles#index'
end
