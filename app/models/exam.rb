class Exam < ActiveRecord::Base
	has_many :questions
	validates_presence_of :title,:description
end
