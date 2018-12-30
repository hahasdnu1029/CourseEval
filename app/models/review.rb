class Review < ActiveRecord::Base
    belongs_to:movie
    has_many:users
end
