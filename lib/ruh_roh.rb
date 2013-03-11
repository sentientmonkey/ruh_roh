require "ruh_roh/engine"
require "ruh_roh/generator"

module RuhRoh
  class Engine < Rails::Engine
    initializer "ruh_roh.some_init_task" do |app|
      RuhRohConfig = Struct.new(:application_layout, :application_host, :handled_errors)
      app.config.ruh_roh = RuhRohConfig.new
      app.config.ruh_roh.application_layout = "application"
      app.config.ruh_roh.handled_errors = %w(404 422 500)
    end
  end
end
