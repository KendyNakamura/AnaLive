require 'sidekiq/web'

Rails.application.routes.draw do
  # home
  root 'home#index'
  get 'home/users' => 'home#users'
  resources :home, only: [:destroy, :show]
  # post
  resources :posts, only: [:create]
  # comment
  resources :comments, only: [:create]
  # follows
  post '/follows/create' => 'follows#create'
  post '/follows/destroy' => 'follows#destroy'
  # devise
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions',
                                    confirmations: 'users/confirmations'
    }
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  # sidekiq
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web, at: '/sidekiq'
    ActiveAdmin.routes(self)
  end
end
