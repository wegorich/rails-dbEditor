class Elective < ActiveRecord::Base
  has_many :elective_days
  has_many :electivesations
  has_many :users, through: :electivesations

  accepts_nested_attributes_for :electivesations, :allow_destroy => true

  UNRANSACKABLE_ATTRIBUTES = ["id"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
