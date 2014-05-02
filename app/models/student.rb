class Student < ActiveRecord::Base
  attr_accessible :email, :mobile, :name
  has_many :student_cards

  has_many :student_pastors
  has_many :pastors, :through => :student_pastors

  has_many :student_cell_leaders
  has_many :cell_leaders, :through => :student_cell_leaders

  validates :email, :mobile, :name, presence: true
  validate :email, :email_validator, uniqueness: true

  def email_validator
    errors.add(:email, "not a valid email") unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end
