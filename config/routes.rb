Rails.application.routes.draw do
  devise_for :users
  
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create,:show,:destroy,:edit] do
    resources :comments, only: [:create,:destroy]
    collection do
      get 'search'
    end
  end
 

end
