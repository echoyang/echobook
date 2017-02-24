class WelcomeController < ApplicationController
    def index
      flash[:notice] = "1"
      flash[:alert] = "2"
      flash[:warning] = "3"
    end
end
