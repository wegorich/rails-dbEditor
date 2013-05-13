class Firm < ActiveRecord::Base
  has_many :specializables
  accepts_nested_attributes_for :specializables, :allow_destroy => true

  has_many :specialties, through: :specializables

  UNRANSACKABLE_ATTRIBUTES = ["id"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
