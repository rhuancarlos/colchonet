class UsersController < ApplicationController

	# Metodo de vizualização, levando em seus parametros o id do usuario para facilizar a 
	# precisão na exibição de um registro em especifico.
	def show
		@user = User.find(params[:id])
	end

	# Metodo de nova inclusão, porém, sua ação é definida pelo metodo 'create'
	def new #chamada no browser
		@user = User.new
	end

	# Metodo de criação 'insert into dataBASE@tabela_de_usuarios'
	def create #chamada interna da aplicação
		@user = User.new(user_params)
		if @user.save
			redirect_to @user,
				notice: 'Cadastro realizado com sucesso !'
		else
			render action: :new
		end
	end

	# Metodo de edição com parametro :id, onde tem a precisão na edição de registro em especifico
	def edit #chamada no browser
		@user = User.find(params[:id])
	end
	
	# Metodo de criação 'update tabela_de_usuarios'
	def update #chamada interna da aplicação
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user,
				notice: 'Atualização realizada com sucesso !'
		else
			render action: :new
		end
	end

	# Metodo que controla quais atributos vindos da view deveram ser enviados para o model.
	# Os atributos indicados em 'permit(:, :,)' deveram ser correspondentes aos da view.
	private
	def user_params
		params.
			require(:user).
			permit(:full_name, :email, :location, :password, :password_confirmation, :bio)
	end
end