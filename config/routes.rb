Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  resources :books, only: [:create, :index, :show, :destroy, :edit, :update ] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :index, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  get "search" => "searches#search"

end
