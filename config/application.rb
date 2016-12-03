require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Oshie
  class Application < Rails::Application

    # layouts for Devise on a controller basis
    config.to_prepare do

        # User Registration (Always use empty layout)
        Devise::RegistrationsController.layout proc{ |controller|
        action_name == 'new' ? "empty"   : "application" }
        # # action specific layout
        # Devise::RegistrationsController.layout proc{ |controller|
        # action_name == 'edit' ? "application"   : "application" }
        #
        #
        Devise::ConfirmationsController.layout "empty"
        Devise::SessionsController.layout "empty"
        Devise::PasswordsController.layout "empty"
        Devise::UnlocksController.layout "empty"


    end

  end
end
