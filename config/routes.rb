Rails.application.routes.draw do
  get '/users', to: 'users#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
