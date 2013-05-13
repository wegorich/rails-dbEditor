class Specialty < ActiveRecord::Base
  has_many :specializables
  has_many :groups
  has_many :firms, through: :specializables

  UNRANSACKABLE_ATTRIBUTES = ["id"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
