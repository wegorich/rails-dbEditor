class Elective < ActiveRecord::Base
  has_many :elective_days
  belongs_to :user

end
