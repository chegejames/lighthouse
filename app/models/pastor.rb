#
#  This is the model that creates the pastor.
#  The pastor has attributes email, name and mobile.
#  All of which should be present and the email unique.
#
class Pastor < ActiveRecord::Base
  attr_accessible :email, :mobile, :name

  has_many :student_pastors
  has_many :students, :through => :student_pastors

  validates :email, :mobile, :name, presence: true

  validate :email, :email_validator, uniqueness: true

  def email_validator
    errors.add(:email, "not a valid email") unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end
