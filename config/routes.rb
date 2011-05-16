NewDividendReporter::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => "stocks#index"
  resources :stocks
  resources :users
  get 'stocks/:id/watch' => "stocks#watch", :as => 'stocks_watch'
  get 'pages/help' => "pages#help", :as => 'pages_help'
  get 'users/:id/' => "users#show", :as => 'user_show'
  get 'users/remove_watch/:id' => "users#remove_watch", :as => 'user_remove_watch'
  get 'admin/panel' => "admin#index", :as => 'admin_panel'
  get 'admin/update_quotes' => "admin#update_quotes", :as => 'admin_update_quotes'
  get 'admin/remove_stock/:id' => "admin#remove_stock", :as => 'admin_remove_stock'
  get 'admin/add_stock' => "admin#add_stock", :as => 'admin_add_stock'
end
