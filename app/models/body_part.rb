class BodyPart < ApplicationRecord
    has_many :workouts 
    has_many :athletes, through: :workouts 
end
