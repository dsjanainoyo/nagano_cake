Rails.application.routes.draw do
  

  root to:'public/homes#top'
  get '/homes/about'=>'public/homes#about'
  get 'homes/index'=>'public/homes#index'


  namespace :admin do
    get '/'=>'homes#top'
    resources :genres, only: [:index,:create,:edit,:update]
    resources :items, only: [:new,:create,:index,:show,:edit,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resources :orders, only: [:show,:update]
    resources :order_details, only: [:update]
    resources :homes, only: [:top]
  end
  
  namespace :public do
  end 
  
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }


  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
