module SccRails
  class ApplicationController < ActionController::API
    # protect_from_forgery with: :exception

    def refresh
      SccRails::Engine.reload_config
      Rails.logger.info '$cloud_env has been reloaded from spring cloud config server'
      render json: { msg: 'ok' }
    rescue Exception => e
      Rails.logger.error e.message
      render json: { msg: e.message }, status: 500
    end
  end
end
