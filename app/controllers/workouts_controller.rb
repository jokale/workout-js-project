class WorkoutsController < ApplicationController
    def index 
        @workouts = Workout.all 
        render json: @workouts, include: [:athlete, :body_part] 
    end 


    def show 
        @workout = Workout.find(params[:id])
        render json: @workout, include: [:athlete, :body_part],status:200 
    end 

    def create 
        @athlete = Athlete.find_or_create_by(name:params[:athlete_name])
        @bodypart = BodyPart.find_or_create_by(name:params[:body_part_name])

        @workout = Workout.new(workout_params)
        @workout.athlete= @athlete
        @workout.body_part= @bodypart
        #add if else 
       if @workout.save 
        render json: @workout, status:200 
       else 
        render json:{error: @workout.errors.full_messages.to_sentence}, status:422
        end 
    end 

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout, status:200 
    end 


    def destroy 
        @workout = Workout.find(params[:id])
        @workout.delete 
        render json: {workoutId: @workout.id}
    end 

    private
    def workout_params
        # params.permit(:name, :description)
         params.require(:workout).permit(:name, :description, :athlete_id, :body_part_id, athlete_attributes: [:name], body_part_attributes: [:name])
    
    end 

end
