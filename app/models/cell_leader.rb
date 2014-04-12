class CellLeader < ActiveRecord::Base
  attr_accessible :email, :mobile, :name

  validates :email, :mobile, :name, presence: true

  validate :email, :email_validator, uniqueness: true

  def email_validator
    errors.add(:email, "not a valid email") unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end
