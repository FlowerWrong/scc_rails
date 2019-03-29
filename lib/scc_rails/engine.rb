require 'scc_ruby'

module SccRails
  class Engine < ::Rails::Engine
    isolate_namespace SccRails

    config.before_configuration do
      reload_config
    end

    def self.reload_config
      if ENV['CONFIG_SERVER_URL'].blank?
        puts 'No CONFIG_SERVER_URL provided, scc_rails will not fetch config from spring cloud config server'
      else
        $cloud_env = SccRuby::Api.fetch(ENV['CONFIG_SERVER_URL'], ENV['APP_NAME'] || Rails.application.class.parent.to_s.downcase, Rails.env, ENV['CLOUD_USERNAME'] || '', ENV['CLOUD_PASSWORD'] || '')
      end
    end
  end
end
