require 'sidekiq/web'

Rails.application.routes.draw do
  root 'home#index'
  get 'home/users' => 'home#users'
  resources :posts, only: [:create]

  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', confirmations: 'users/confirmations'
    }

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web, at: '/sidekiq'
    ActiveAdmin.routes(self)
  end
end
