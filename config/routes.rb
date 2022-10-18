Rails.application.routes.draw do
  Rails.application.routes.draw do
    root "users#index"
    get "/users/destroy", to: "users#destroy"
    resources :users
    resources :articles
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end