Rails3DeviseRspecCucumber::Application.routes.draw do
  resources :orders

  resources :sandwiches

#  authenticated :user do
#    root :to => 'home#index'
#  end
  root :to => "orders#new"
  devise_for :users
  resources :users, :only => [:show, :index]
end
