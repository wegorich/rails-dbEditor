class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :electivesations
  has_many :eventables
  accepts_nested_attributes_for :electivesations, :allow_destroy => true
  accepts_nested_attributes_for :eventables, :allow_destroy => true
  belongs_to :user_type
  belongs_to :group

  has_many :electives, :through => :electivesations
  has_many :event_reports, :through => :eventables

  UNRANSACKABLE_ATTRIBUTES = ["id"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
