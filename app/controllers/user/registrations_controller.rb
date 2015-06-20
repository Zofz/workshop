class User::RegistrationsController < Devise::RegistrationsController

  def update
    self.resource = resource_class.to_adapter.
      get!(send(:"current_#{resource_name}").to_key)
    if resource.respond_to?(:unconfirmed_email)
      prev_unconfirmed_email = resource.unconfirmed_email
    end

    resource_updated = update_resource(resource, account_update_params)
    yield resource if block_given?
    if resource_updated
      if is_flashing_format?
        if update_needs_confirmation?(resource, prev_unconfirmed_email)
          flash_key = :update_needs_confirmation
        else
          flash_key = :updated
        end
        set_flash_message :notice, flash_key
      end
      sign_in resource_name, resource, bypass: true
      respond_with resource, location: after_update_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  protected

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  def after_update_path_for(resource)
    user_path
  end
end
