class Workout < ApplicationRecord
    belongs_to :athlete 
    belongs_to :body_part 
    # has_many :athletes, through: :body_part
end
