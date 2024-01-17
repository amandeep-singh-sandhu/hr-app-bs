class ApplicationController < ActionController::Base
  # Singing is required to access the site
  before_action :authenticate_user!
end
