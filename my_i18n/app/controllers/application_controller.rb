class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  private

  def set_locale
    my_locale = params[:locale] || session[:locale]
    session[:locale] = my_locale
    I18n.locale = my_locale || I18n.default_locale
  end
end
