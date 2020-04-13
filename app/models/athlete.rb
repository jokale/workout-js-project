class Athlete < ApplicationRecord 
    has_many :workouts 
    has_many :body_parts, through: :body_part

end
