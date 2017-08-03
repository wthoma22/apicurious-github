Rails.application.routes.draw do
  root 'home#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get  '/dashboard', to: 'dashboard#index'
  delete '/logout', to: 'sessions#destroy'

  get '/followed', to: 'followed#index'
  get '/starred_repos', to: 'starred_repos#index'
  get '/repositories', to: 'repositories#index'
end
