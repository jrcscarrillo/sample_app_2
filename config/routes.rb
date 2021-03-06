SampleApp2::Application.routes.draw do
    
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    resources :microposts, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]
    
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  
    root to: 'static_pages#home'
    match '/signup', to: 'users#new'
    match '/signin',  to: 'sessions#new'
    match '/signout', to: 'sessions#destroy', via: :delete
    match '/about', to: 'static_pages#about'
    match '/contact', to: 'static_pages#contact'
    match '/help', to: 'static_pages#help'

end
