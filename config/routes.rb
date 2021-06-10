Rails.application.routes.draw do
  get 'stocks/index'
  get 'tweet/index'
  resources :tweets do
    collection do
      post :confirm
    end
  end
  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
