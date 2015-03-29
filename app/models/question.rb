class Question < ActiveRecord::Base
  validates_presence_of :title,:type
  belongs_to :exam
  self.inheritance_column = nil
end
