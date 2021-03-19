class Instructor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :instructor_profile, dependent: :destroy
  has_many :timeslots, dependent: :destroy
  has_many :bookings
  after_create :init_instructor_profile

  def init_instructor_profile
    self.create_instructor_profile!
  end

end
