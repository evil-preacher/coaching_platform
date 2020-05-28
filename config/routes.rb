Rails.application.routes.draw do
  devise_for :coaches

  resources :courses, only: [:index, :new, :create]
  root 'pages#home'
end
