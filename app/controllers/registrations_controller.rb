class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(users)
    '/posts'
  end

  def after_sign_in_path_for(users)
    '/posts'
  end

  private

   def sign_up_params
     params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :bio)
   end

   def account_update_params
     params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :bio)
   end

end
