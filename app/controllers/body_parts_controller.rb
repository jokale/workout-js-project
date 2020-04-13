class BodyPartsController < ApplicationController
    def index 
        @body_parts = BodyPart.all 
        render json: @body_parts
    end 
end
