Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/home/about' => 'homes#about', as: 'about'


  #get 'users/index'
  #get 'users/show'
  #get 'users/edit'
  #上記三つを下記一行に変更。
  resources :users
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #上記三つを下記一行に変更。
  resources :books





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
