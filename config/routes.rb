Smdmq::Application.routes.draw do
  devise_for :users
  resources :users
  
  resources :ingresos
  resources :roles
  resources :partidos
  resources :jornadas
  resources :equipos
  resources :divisions
  root :to => "home#index"
  
  
end
