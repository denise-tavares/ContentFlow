Rails.application.routes.draw do

  devise_for :admins
  get 'welcome', to: 'welcome#index'

  namespace :admins_backoffice do
    get 'index'   #Dashboard
  end

  root to: "welcome#index"

 
end