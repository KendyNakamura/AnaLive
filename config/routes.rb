require 'sidekiq/web'

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', confirmations: 'users/confirmations'
    }
  mount Sidekiq::Web, at: '/sidekiq'
end
