NewDividendReporter::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => "stocks#index"
  resources :stocks
  get 'stocks/:id/watch' => "stocks#watch", :as => 'stocks_watch'
  
end
