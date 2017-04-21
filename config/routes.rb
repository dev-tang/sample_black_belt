Rails.application.routes.draw do

  root 'users#index'
  get 'index' => 'ideas#index'
  get 'logout' => 'users#logout'
  post 'users/register' => 'users#register'
  post 'users/login' => 'users#login'
  get 'users/:id' => 'users#show'
  get 'ideas/index'
  post 'ideas/add_idea' =>'ideas#add_idea'
  post 'ideas/:id/like' => 'ideas#like_idea'
  delete 'ideas/:id/delete' => 'ideas#delete_idea'
  get 'ideas/:id' => 'ideas#show'

  
end
