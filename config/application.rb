require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    # 以下省略
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
# module AwesomeEvents
#   class Application < Rails::Application
#     config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
#     # 以下省略
#     config.load_defaults 5.1
#
#     # Settings in config/environments/* take precedence over those specified here.
#     # Application configuration should go into files in config/initializers
#     # -- all .rb files in that directory are automatically loaded.
#     config.action_view.embed_authenticity_token_in_remote_forms = true
#   end
# end
