NewDividendReporter::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => "stocks#index"
  get 'stocks/index' => 'stocks#index'
end
