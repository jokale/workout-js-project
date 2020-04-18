class Athlete < ApplicationRecord 
    has_many :workouts 
    has_many :body_parts, through: :workouts 


    validates :title, uniqueness: :true 

end
