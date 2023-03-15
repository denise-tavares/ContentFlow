Rails.application.routes.draw do



  get 'welcome', to: 'welcome#index'

  get 'admin/login'

  get 'admin/dashboard'

 
end