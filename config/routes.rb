Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#index'
  get "signup" => "users#new"
  resources :projects
  resources :users
  resources :articles
end
