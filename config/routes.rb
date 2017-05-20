Rails.application.routes.draw do

  root :to => 'pages#page1'
  get '/page1', to: 'pages#page1'


  namespace :admin do
    resources :posts

    get 'dashboard', to: 'dashboard#index'
  end
end



