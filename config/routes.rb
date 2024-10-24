Rails.application.routes.draw do
  devise_for :users
  
  authenticated :user do
    get 'admin/dashboard', to: 'admin#dashboard', as: :admin_dashboard
  end

  root to: 'points#index'
end
