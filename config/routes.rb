Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus
  resources :curriculums do
    resources :contents,       only: [:new, :create]
    resources :exams,          only: [:new, :create]
    resources :exam_responses, only: [:new, :create, :edit, :update]
  end
end
