require File.expand_path("../boot", __FILE__)

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you"ve limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workshop
  class Application < Rails::Application

    config.time_zone = "Stockholm"
    config.i18n.load_path +=
      Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}")]
    config.i18n.default_locale = :sv

    config.action_mailer.delivery_method = :postmark
    config.action_mailer.postmark_settings = {
      api_token: "01e6992a-db01-4d59-87a7-409d4ec42a57"
    }

    config.active_record.raise_in_transactional_callbacks = true
  end
end
