Rails.application.routes.draw do

	scope "(:locale)", locale: /en|pt/ do
	  resources :rooms
	  resources :users
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Custom Routes
  get '/:locate' => 'home#index', locale: /en|pt/
  root 'home#index' # Mudando a pagina inicial do rails para o controlle 'home' action 'index'.

end
