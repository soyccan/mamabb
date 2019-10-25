class ApplicationController < ActionController::Base
    helper_method :admin?
    def admin?
        session[:is_admin]
    end
end
