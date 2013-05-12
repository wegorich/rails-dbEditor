class Event < ActiveRecord::Base
  belongs_to :event_type
  has_many :event_reports
end
