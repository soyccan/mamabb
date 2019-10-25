class Announcement < ApplicationRecord
    validates_presence_of :title
    validates_length_of :title, :maximum => 200
    validates_length_of :contents, :maximum => 1000
    validates_length_of :poster, :maximum => 100
end
