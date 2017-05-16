Rails.application.routes.draw do

  root :to => 'pages#page1'
  get '/page1', to: 'pages#page1'

end
