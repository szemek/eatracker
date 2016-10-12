Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'meals#today'

  resources :meals do
    collection do
      get :today
    end
  end

  resources :exercises
  resources :notes

  get 'calculator' => 'calculator#show'

  resource :weight, only: [:show, :create]

  namespace :api do
    get 'charts/weight'
  end

  get ':day/:month/:year' => 'days#show'
end
