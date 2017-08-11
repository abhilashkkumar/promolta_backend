class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :destroy_session, :authenticate_request

  def destroy_session
    request.session_options[:skip] = true
  end

  def not_found
    render json: { error: 'Not found' }, status: 404
  end

end
