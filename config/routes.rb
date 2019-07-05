Rails.application.routes.draw do
  resources :goals
  resources :financials
  resources :automated_tasks
  resources :digital_lockers
  resources :activities
  resources :lists
  resources :onelogins
  resources :noticeboards
  resources :users

  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
