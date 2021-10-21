Rails.application.routes.draw do
  get 'home/index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'posts', to: 'posts#index'
  get 'new_post', to: 'posts#new' 
  
  post 'posts', to: 'posts#index'
  post 'new_post', to: 'posts#create'

  get 'comment', to: 'comment#new'
  post 'comment', to: 'comment#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'

  root to: 'home#index'

  resources :posts do
    resources :comments
    resources :likes
  end
end
