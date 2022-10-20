Rails.application.routes.draw do
  root "users#index"
  resources :users do
    resources :posts do
      resources :comments
    end
  end
  resources :posts do
    resources :comments
  end
  resources :users do
    resources :comments
  end
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end