
module RuhRoh
  class Generator

    def generate!
      config.handled_errors.each do |action|
        app.get "/error/#{action}"
        if app.response.code == "200"
          File.open("public/#{action}.html", "w") { |f| f.write app.response.body }
        else
          raise app.response.body
        end
      end
    end

    private

    def config
      Rails.configuration.ruh_roh
    end

    def app
      @app ||= (
        require "rails/console/app"
        extend Rails::ConsoleMethods

        app.host = config.application_host
        app
      )
    end
  end

end
