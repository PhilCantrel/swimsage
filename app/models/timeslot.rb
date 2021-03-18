class Timeslot < ApplicationRecord
  belongs_to :instructor
  has_one :daytime
end
