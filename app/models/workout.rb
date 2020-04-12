class Workout < ApplicationRecord
    belongs_to :athlete 
    belongs_to :body_part 
end
