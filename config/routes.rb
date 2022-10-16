Rails.application.routes.draw do
  root  'welcome#home'

  get 'welcome', to: 'welcome#about'


  get 'signup', to: 'users#new'

  resources  :users, except: [:new] do
    resources :articles  do
      resources :comments , only: [:new, :create]
    end
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get '/search' , to: 'articles#search'
  # Defines the root path route ("/")
  # root "articles#index"

end
