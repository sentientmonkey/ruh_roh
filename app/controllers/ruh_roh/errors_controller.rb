module RuhRoh
  class ErrorsController < ApplicationController
    def error
      render :action => params[:id]
    end
  end
end
