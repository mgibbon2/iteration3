Rails.application.routes.draw do

  devise_for :users
  # Defines the root path route ("/")
  # root "articles#index"
  root "projects#index"
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/toggle_show_personal', to: 'application#toggle_show_personal'
  get '/toggle_show_school', to: 'application#toggle_show_school'
  get '/toggle_show_work', to: 'application#toggle_show_work'
end
