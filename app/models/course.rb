class Course < ActiveRecord::Base
	has_many :students, through: :enrolled
	has_many :enrolled
end
