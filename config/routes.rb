Rails.application.routes.draw do
  root to: "blogs#index"

  devise_for :users
  resources :blogs do
    post 'comments', to: 'comments#create'
  end

  resources :tweets do
    post 'comments', to: 'comments#create'
  end
end
