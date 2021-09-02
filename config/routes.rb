Rails.application.routes.draw do
  root to: "blogs#index"

  devise_for :users
  resources :blogs do
    # post 'comments', to: 'comments#create'
    resources :comments, module: :blogs
  end

  resources :tweets do
    resources :comments, module: :tweets
    # post 'comments', to: 'comments#create'
  end
end
