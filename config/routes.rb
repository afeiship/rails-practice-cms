Rails.application.routes.draw do
  mount RailsCategory::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'high_voltage/pages#show', id: 'about'
  resources :articles
end
