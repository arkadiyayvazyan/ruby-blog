Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :articles do
    resources :comments
  end

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

end
