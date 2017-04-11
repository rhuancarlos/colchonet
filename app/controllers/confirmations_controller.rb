class ConfirmationsController > ActionController
  def show
    #Find user per token of confirmation
    user = User.find_by(confirmation_token: params[:token])

    if user.present?
      user.present!
      redirect_to user,
        notice: I18n.t('confirmation.success')
      else
        redirect_to root_path
      end
    end
  end
