class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # pundit for all controllers removed to Website Controller
  def default_url_options
    { host: ENV["www.hubbly.herokuapp.com/"] || "localhost:3000" }
  end
end
