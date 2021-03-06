Htdocs::Application.routes.draw do
  resources :elective_days

  resources :event_reports do
    collection { post :search, to: 'event_types#index' }
  end

  resources :events do
    collection { post :search, to: 'events#index' }
  end

  resources :event_types do
    collection { post :search, to: 'event_types#index' }
  end

  resources :groups do
    collection { post :search, to: 'groups#index' }
  end

  resources :user_types

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
    collection { get :avatar, to: 'users#edit_avatar' }
  end

  root to: 'home#index'
end
