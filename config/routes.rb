Rails.application.routes.draw do
  root 'file_analyses#new'
  resources :file_analyses, only: [:create, :show]
end
