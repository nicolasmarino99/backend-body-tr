# frozen_string_literal: true

class ApplicationController < ActionController::Base
   include Response
  include ExceptionHandler
  skip_before_action :verify_authenticity_token
  helper_method :login!, :logged_in?, :current_user,
  :authorized_user?, :logout!, :set_user, :set_category

    def login!
        session[:user_id] = @user.id
    end
    def logged_in?
        !!session[:user_id]
    end
    def current_user
        @current_user ||= User.find(params[:user_id]) 
    end
    def authorized_user?
        @user == current_user
    end
    def logout!
        session.clear
    end
    def set_user
        @user = User.find_by(id: session[:user_id])
    end
end
