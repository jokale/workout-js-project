class AthletesController < ApplicationController
    def index 
        @athletes = Athlete.all 
        render json: @athletes
    end 

    

    def show 
        @athlete = Athlete.find(params[:id])
        render json: @athlete ,status:200 
    end 


    def create 
        @athlete = Athlete.create(athlete_params)
        render json: @athlete ,status:200 

    end

    def update
        @athlete = Athlete.find(params[:id])
        @athlete.update(athlete_params)
        render json: @athlete, status:200 
    end 


    def destroy 
        @athlete = Athlete.find(params[:id])
        @athlete.delete 
        render json: {athleteId: @athlete.id}
    end 



    private 
    def athlete_params
        params.require(:athlete).permit(:name)
    end 
end

