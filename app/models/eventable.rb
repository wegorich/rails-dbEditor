class Eventable < ActiveRecord::Base
  belongs_to :user
  belongs_to :event_report
end
