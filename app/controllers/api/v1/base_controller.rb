class Api::V1::BaseController < ActionController::API
  include ActionController::Serialization
  include ActionController::RequestForgeryProtection

  # protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token
  # before_action :authorize_token!

  # def token_header
  #   request.headers['token']
  # end

  # def authorize_token!
  #   unless Token.find_by(device_token: token_header)
  #     render json: {message: 'Token is incorrect', code: 'unauthorized'}, status: :unauthorized
  #   end
  # end
end
