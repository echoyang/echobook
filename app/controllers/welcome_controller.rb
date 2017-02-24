class WelcomeController < ApplicationController
    def index
      flash[:notice] = "welcome to yikeshu"
    end
end
