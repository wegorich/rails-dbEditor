Htdocs::Application.routes.draw do
  resources :firms

  resources :specialties

  resources :electives

  devise_for :users
  resources :users
  root to: 'home#index'
end
