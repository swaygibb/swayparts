class PartsController < ApplicationController
    def show
        @part = helpers.getPart(params[:id])
        puts @part
    end
end
