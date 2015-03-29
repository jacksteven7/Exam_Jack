class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :exam

  validates_presence_of :title,:type
  self.inheritance_column = nil
end
