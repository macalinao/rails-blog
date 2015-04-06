Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
