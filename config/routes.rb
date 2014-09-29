Rails.application.routes.draw do
  root 'main#index'
  resources :invitados, defaults: {format: :json}
end
