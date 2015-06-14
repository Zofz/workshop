class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale
  helper_method [:model_name, :models_name, :success_create, :success_update]

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to root_url, alert: exception.message
    else
      redirect_to :new_user_session, alert: exception.message
    end
  end

  rescue_from ActiveRecord::RecordInvalid do |ex|
    flash[:alert] =
      "Fel i formulär:  #{ex.record.errors.full_messages.join '; '}"
    render referring_action, status: :unprocessable_entity
  end

  rescue_from ActiveRecord::RecordNotFound do
    # translate record not found -> HTTP 404
    fail ActionController::RoutingError.new 'not found'
  end

  add_breadcrumb :root, 'Hem'

  def model_name(model)
    if model.instance_of?(Class)
      model.model_name.human
    end
  end

  def models_name(model)
    if model.instance_of?(Class)
      return model.model_name.human(count: 2)
    end
  end

  def alert_create(model)
    if model.instance_of?(Class)
      %(#{model_name(model)} #{t(:success_create)}.)
    end
  end

  def alert_update(model)
    if model.instance_of?(Class)
      %(#{model_name(model)} #{t(:success_update)}.)
    end
  end

  def alert_destroy(model)
    if model.instance_of?(Class)
      %(#{model_name(model)} #{t(:success_destroy)}.)
    end
  end

  private

  def require_user_signed_in
    unless user_signed_in?

      # If the user came from a page, we can send them back.  Otherwise, send
      # them to the root path.

      redirect_to :new_user_session, error: "Du måste vara inloggad."
    end
  end

  def set_locale
    locale = 'sv'
    langs = %w{ sv en }

    if params[:locale]
      lang = params[:locale]
      if langs.include? lang
        locale = lang
        cookies[:locale] = lang
      end
    else
      if cookies[:locale]
        lang = cookies[:locale]
        locale = lang if langs.include? lang
      end
    end
    I18n.locale = locale
    redirect_to(:back) if params[:locale]
  end
end
