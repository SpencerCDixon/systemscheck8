Rails.application.routes.draw do
  root 'welcome#index'
  resources :books do
    resources :reviews, only: [:create, :new]
  end
end
