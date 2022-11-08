Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about",as: "about"


  resources :users, only: [:show, :edit, :new, :index, :create, :update] do
    resources :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :books, only: [:show, :edit, :new, :index, :create,:update, :destroy]


 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
