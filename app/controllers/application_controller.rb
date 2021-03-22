class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # pundit for all controllers removed to Website Controller
end
