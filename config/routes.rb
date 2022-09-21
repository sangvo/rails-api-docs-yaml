Rails.application.routes.draw do
  resources :comments
  resources :posts
  # Routes for swagger docs
  get '/swagger/*path', to: 'swagger#respond'
  get '/swagger', to: 'swagger#respond'
end
