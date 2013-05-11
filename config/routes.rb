Htdocs::Application.routes.draw do
  resources :firms do
    collection { post :search, to: 'firms#index' }
  end

  resources :specialties do
    collection { post :search, to: 'specialties#index' }
  end

  resources :electives do
    collection { post :search, to: 'electives#index' }
  end

  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users do
    collection { post :search, to: 'users#index' }
  end

  root to: 'home#index'
end
