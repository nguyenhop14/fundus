class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :set_locale


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, alert: exception.message
  end

  protect_from_forgery with: :exception

  private
  def default_url_options
    {locale: I18n.locale}
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
