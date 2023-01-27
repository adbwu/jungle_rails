class AdminController < ApplicationController
  before_action :authenticate

  def authenticate
    http_basic_authenticate_or_request_with name: "Jungle", password: 'Password'
  end
end
