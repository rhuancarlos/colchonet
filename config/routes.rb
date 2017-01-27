Rails.application.routes.draw do
  resources :rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Custom Routes
  root 'home#index' # Mudando a pagina inicial do rails para o controlle 'home' action 'index'.

end
