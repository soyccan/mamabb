class User < ApplicationRecord
    validates_length_of :username, :maximum => 100
    validates_length_of :password, :maximum => 100
end
