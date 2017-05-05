Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # mount RailsPages::Engine => "/blog"
  get '_rails_pages/pages/page1';
  # get 'pages/page2';
  # get 'pages/page3';



end
