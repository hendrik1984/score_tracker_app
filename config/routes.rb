Rails.application.routes.draw do
  devise_for :users
  
  get 'admin/dashboard', to: 'admin#dashboard', as: :admin_dashboard

  root to: 'points#index'
end
