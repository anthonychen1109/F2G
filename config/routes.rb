Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :index, :edit, :update]
  resources :comments, only: [:new, :create, :index, :show]
  resources :chatrooms, param: :id
  resources :messages

  Rails.application.routes.draw do
    root 'users#new'
    # mount Commontator::Engine => '/commontator'
    mount ActionCable.server => '/cable'
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  # post 'upvote', to: 'posts#upvote', as: 'upvote'
  # post 'downvote', to: 'posts#downvote', as: 'downvote'

end
