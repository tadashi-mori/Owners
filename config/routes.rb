Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#index'
  post "likes/:project_id/create" => "likes#create"
  post "likes/:project_id/destroy" => "likes#destroy"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/:id/update" => "users#update"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  post "projects/create" => "projects#create"
  resources :projects do
    resources :orders
  end
  resources :users
  resources :articles
end
