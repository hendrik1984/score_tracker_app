Rails.application.routes.draw do
  devise_for :users
  
  get 'admin/dashboard', to: 'admin#dashboard', as: :admin_dashboard

  resources :page_tags, only: [:index, :show]
  
  root to: 'points#index'
end
