class Booking < ApplicationRecord
  belongs_to :instructor
  belongs_to :user
  has_one :student
  has_one :timeslot
end
