# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:new, :creates]
  before_action :configure_account_update_params, only: [:update]
  include Common
  # GET /jobs/sign_up
  def new
    super
  end

  # POST /jobs
  def create
     super
  end

  # GET /jobs/edit
  def edit
    # super
    setBackgroundImage
  end

  # PUT /jobs
  def update
    super
  end

  # DELETE /jobs
  # def destroy
  #   super
  # end

  # GET /jobs/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :university, :major, :type_user])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    setBackgroundImage
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:address, :university])
  end

  # The path used after sign up.
  # def after_sign_up_path_for(jobs)
  #   super(jobs)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(jobs)
  #   super(jobs)
  # end

end
