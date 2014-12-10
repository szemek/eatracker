Rails.application.routes.draw do
  root 'meals#today'

  resources :meals do
    collection do
      get :today
    end
  end

  get ':day/:month/:year' => 'days#show'

  get 'calculator' => 'calculator#show'
end
