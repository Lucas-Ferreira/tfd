Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :rotums do
    resources :travels do

    end
  end

  resources :vehicles do

  end

  resources :days do
  end

  resources :users do

  end

  resources :travels do
    resources :patients do

    end
  end

  devise_scope :user do
    post "sign_up", to: "registrations#create"
    get "new_sign_up", to: "registrations#new"
    #delete "user_delete", to: "registrations#destroy"
  end
end
