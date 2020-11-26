Rails.application.routes.draw do
  root to: 'pages#welcome'
  get '/subscribe', to: 'pages#subscribe', as: 'subscribe'
  get '/issue', to: 'pages#issue', as: 'issue'
  get '/functions', to: 'pages#functions', as: 'functions'
  get '/team', to: 'pages#team', as: 'team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subscribers, only: [:create]
end
