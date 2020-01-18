require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MaterialCrud
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
Raven.configure do |config|
  config.dsn = 'https://16d8b74f619f4e58a19b57e9a7bb3c96:4fdd20c2446d4bb68f75460ee0a18a35@sentry.io/1886611'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end