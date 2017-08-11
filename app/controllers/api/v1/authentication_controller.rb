class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request, :verify_authenticity_token
  require 'json'

  # for login for user
  def authenticate

    unless User.find_by_email(params[:email]).present?
      render json: { error: "It seems Email Id and/or password is/are not matched" }, status: 401
      return
    end

    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: "It seems Email Id and/or password is/are not correct" }, status: :unauthorized
    end
  end

  # for logout user
  def logout
    if current_user.present?
      render json: current_user.update(:access_token=>nil)
      return
    end
    render json: { error: 'Not Authorized' }, status: 401 unless current_user
  end

  protected

  def user_params
    params.permit(:password, :email)
  end

end
