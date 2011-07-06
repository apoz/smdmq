Smdmq::Application.routes.draw do
  devise_for :users#,  :controllers => { :registrations => "users" }
  
	#,:controllers => { :registrations => "devise/custom/registrations", :sessions => "devise/custom/sessions" }
  #devise_scope :user do
  #  get '/login' => 'devise/sessions#new'
  #  get '/logout' => 'devise/sessions#destroy'
  #end

  resources :users
  resources :ingresos
  resources :roles
  resources :partidos
  resources :jornadas
  resources :equipos
  resources :divisions
  root :to => "home#index"
  
  
end
