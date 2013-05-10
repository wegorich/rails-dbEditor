class Elective < ActiveRecord::Base
  has_many :elective_days
  has_many :electivesations
end
