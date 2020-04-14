class BodyPartsController < ApplicationController
    def index 
        @body_parts = BodyPart.all 
        render json: @body_parts
    end 

    def show 
        @body_part = BodyPart.find(params[:id])
        render json: @body_part ,status:200 
    end 
   

end
