Rails.application.routes.draw do
  resources :places do
    resources :comments, only: [:create, :destroy]
    resources :pictures, only: [:create, :destroy]
  end
end