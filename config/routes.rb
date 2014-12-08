Rails.application.routes.draw do
  root 'dashboard#index'
  get ':day/:month/:year' => 'days#show'
  resources :meals
end
