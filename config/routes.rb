require 'sidekiq/web'

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', confirmations: 'users/confirmations'
    }
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  mount Sidekiq::Web, at: '/sidekiq'
end
