# frozen_string_literal: true

#管理者　ログイン
class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]


  def reject_inactive_user
    @customer = Customer.find_by(name: params[:name])
    if @user
      if @customer.valid_password?(params[:password]) && !@customer.is_valid
        redirect_to new_admin_session_path
      end
    end
  end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #  super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  # def after_sign_in_path_for(resource)
  # byebug
  #  redirect_to admin_root_path and return
  # end

  # def after_sign_out_path_for(resource)
  #  root_path
  # end
end
