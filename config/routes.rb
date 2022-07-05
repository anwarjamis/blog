Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :posts, except: [:show]
  resources :categories
  resources :bookmarks, only: %i[new create destroy]
end
