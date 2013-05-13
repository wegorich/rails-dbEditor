class EventReport < ActiveRecord::Base
  belongs_to :event
  has_many :eventables
  has_many :users, through: :eventables

  accepts_nested_attributes_for :eventables, :allow_destroy => true
end
