Rails.application.routes.draw do
  
  root to:'public/homes#top'


  namespace :admin do
    get '/'=>'homes#top'
  end
  
  namespace :public do
    get 'homes/index'=>'homes#index'
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
