require 'scc_ruby'

module SccRails
  class Engine < ::Rails::Engine
    isolate_namespace SccRails

    config.before_configuration do
      reload_config
    end

    def self.reload_config
      $cloud_env = SccRuby::Api.fetch(ENV['CONFIG_SERVER_URL'], ENV['APP_NAME'] || Rails.application.class.parent.to_s.downcase, Rails.env)
    end
  end
end
