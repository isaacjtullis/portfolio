Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'profiles#index'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :profiles
  resources :blogs
  resources :posts
end
