Rails.application.routes.draw do
  resources :reasons
  resources :points
  resources :reasons do
    resources :points
  end
  get 'pages/index'
  root to: "pages#index"
end
