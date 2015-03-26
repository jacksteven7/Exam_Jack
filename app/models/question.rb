class Question < ActiveRecord::Base
  belongs_to :exam
  validates_presence_of :title,:type
end
