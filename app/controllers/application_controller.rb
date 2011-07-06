class ApplicationController < ActionController::Base
  #check_authorization #:unless => :devise_controller?
  protect_from_forgery
  #before_filter :authenticate_user!, :except => [:show, :index]  
  #load_and_authorize_resource
  
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
end
