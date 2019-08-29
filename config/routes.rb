Rails.application.routes.draw do
  resources :schoolclasses, only: [:index, :show, :new, :create, :edit, :update]
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
end
