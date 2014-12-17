Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'meals#today'

  resources :meals do
    collection do
      get :today
    end
  end

  get ':day/:month/:year' => 'days#show'

  get 'calculator' => 'calculator#show'

  get 'weight' => 'weight#show'
  post 'weight' => 'weight#create'
end
