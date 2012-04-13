Rails3DeviseRspecCucumber::Application.routes.draw do
  resources :sandwiches

#  authenticated :user do
#    root :to => 'home#index'
#  end
  root :to => "sandwiches#new"
  devise_for :users
  resources :users, :only => [:show, :index]
end
