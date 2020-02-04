class HomeController < ApplicationController
    def index
        @partsList = helpers.getParts()
    end
end
