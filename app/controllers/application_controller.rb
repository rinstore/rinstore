class ApplicationController < ActionController::Base
  include LocalesHelper
  around_action :set_locale

  def set_locale(&action)
     if session[:locale].nil?
       current_locale = get_browser_locale()
       session[:locale] = current_locale
     else
       current_locale = session[:locale]
     end
     I18n.with_locale(current_locale, &action)
  end

  def get_browser_locale()
    request&.env['HTTP_ACCEPT_LANGUAGE']&.include?("ru") ? :ru : :en
  end
end
