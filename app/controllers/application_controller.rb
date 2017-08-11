class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  # user and admin models are not loading because of name(if you rename model it'll work) otherwise we have to explictly include the models
  require 'user'
  
  layout 'application'


  helper_method :current_user,
    :current_user_id,
    :require_user,
    :authenticate_request

  # auth method for user
  def authenticate_request
    @current_user = AuthenticateApiRequest.call(request.headers).result

    render json: { error: 'Not Authorized' }, status: 401 unless @current_user

  end

  private

  def require_user
    redirect_to login_url and store_return_location and return if logged_out?
  end

  def logged_out?
    !current_user
  end

  # adding verification
  def verified_user
    # this is for trucker/shipper only. add extra verification for other roles
    if(current_user)
      unless current_user.mrole.is_verified?
        redirect_to verification_url
      end
    end
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = AuthenticateApiRequest.call(request.headers).result
    #(current_user_session && current_user_session.record)
    # unless @current_user
    #   @current_user = authenticate_request
    # end
    # @cuurent_user ||= authenticate_request

  end


  def current_user_id
    return @current_user_id if defined?(@current_user_id)
    @current_user_id = current_user_session && current_user_session.record && current_user_session.record.id
  end

end
