class Student < ActiveRecord::Base

	has_many :courses, through: :enrolled
	has_many :enrolled, dependent: :destroy

end
