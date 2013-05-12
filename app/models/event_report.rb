class EventReport < ActiveRecord::Base
  belongs_to :event
  has_many :eventables
end
