Rails.application.routes.draw do
  resources :users
  resources :students
  get '/pritam', to: 'users#pritam'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
