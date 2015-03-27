class Question < ActiveRecord::Base
  belongs_to :exam
  self.inheritance_column = nil
end
