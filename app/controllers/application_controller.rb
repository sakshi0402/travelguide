class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :store_location
    protected
    def store_location
      if(request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr? && !current_user) # don't store ajax calls
        session[:previous_url] = request.fullpath
      end
    end
    def after_sign_in_path_for(resource)
      previous_path = session[:previous_url]
      session[:previous_url] = nil
      previous_path || root_path
    end
    def after_sign_out_path_for(resource)
      request.referrer || root_path
    end
    def configure_permitted_parameters
      added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
