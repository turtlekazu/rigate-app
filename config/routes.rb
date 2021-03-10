Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus
  resources :curriculums do
    resources :contents, only: [:new, :create]
  end
end
