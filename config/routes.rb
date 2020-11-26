Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :stories
  get 'my_stories', to: 'stories#my_stories', as: 'my_stories'

  namespace :admin do
    resources :users
  end
  patch 'make_admin/:id', to: 'admin/users#make_admin', as: "make_admin"
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
