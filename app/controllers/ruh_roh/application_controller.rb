module RuhRoh
  class ApplicationController < ActionController::Base
    layout :application_layout

    private

    def application_layout
      Rails.configuration.ruh_roh.application_layout
    end
  end
end
