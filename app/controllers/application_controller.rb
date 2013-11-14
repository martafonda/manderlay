class ApplicationController < ActionController::Base
  before_action :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
def set_locale
	if params[:locale].present?
		locale = param[:locale].downcase.to_sym
		if I18n.available_locales.include? locale
			 locale
		else
			I18n.locale = I18n.default_locale
		end
	end
end

end
