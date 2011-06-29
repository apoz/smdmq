class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :authenticate_user!, :except => [:show, :index]  
  #load_and_authorize_resource
  
end
