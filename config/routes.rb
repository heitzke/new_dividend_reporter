NewDividendReporter::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => "stocks#index"
  resources :stocks
  resources :users
  get 'stocks/:id/watch' => "stocks#watch", :as => 'stocks_watch'
  get 'pages/help' => "pages#help", :as => 'pages_help'
  get 'users/:id/' => "users#show", :as => 'user_show'
end
