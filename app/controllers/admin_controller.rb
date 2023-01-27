class AdminController < ApplicationController
  before_action :index, :authenticate

  def authenticate
    http_basic_authenticate_or_request_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD']
  end
end
