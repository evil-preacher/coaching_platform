Rails.application.routes.draw do
  devise_for :coaches
  root 'pages#home'
end
