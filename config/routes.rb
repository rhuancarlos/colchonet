Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	scope "(:locale)", locale: /en|pt/ do
	  resources :rooms
	  resources :users
	end

  # Custom Routes
  get '/:locate' => 'home#index', locale: /en|pt/
	resource :confirmation, only: [:show]

	#Route for model user_session
	resource :user_sessions, only: [:create, :new, :destroy]

	# Mudando a pagina inicial do rails para o controlle 'home' action 'index'.
	root 'home#index'

end
