Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :new, :create, :destroy]
end
