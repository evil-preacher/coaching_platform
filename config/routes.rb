Rails.application.routes.draw do
  devise_for :coaches

  resources :courses, only: [:index, :new]
  root 'pages#home'
end
