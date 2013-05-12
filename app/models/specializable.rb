class Specializable < ActiveRecord::Base
  belongs_to :specialty
  belongs_to :firm
end
