require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Enemgo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.autoload_paths << "#{Rails.root}/lib"
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = :'pt-BR'

    config.generators do |g|
			g.assets false
			g.helper false
			g.stylesheets false
		end

    # Active Job
    config.active_job.queue_adapter = :sidekiq
  end
end
