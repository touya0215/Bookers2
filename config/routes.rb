Rails.application.routes.draw do
  devise_for :users


  #get 'users/index'
  #get 'users/show'
  #get 'users/edit'
  #上記三つを下記一行に変更。
  resources :users, only: [:show, :edit, :index, :update]
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #上記三つを下記一行に変更。
  resources :books, only: [:show, :edit, :index]
  root to: "homes#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
