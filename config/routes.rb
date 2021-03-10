Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus
  resources :curriculums do
    resources :contents, only: [:new, :create]
    resources :exams, only: [:index, :new, :create]
  end
end
