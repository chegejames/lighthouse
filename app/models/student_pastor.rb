class StudentPastor < ActiveRecord::Base
  belongs_to :pastor
  belongs_to :student

  attr_accessible :date

  validates :student_id, :pastor_id, :date, presence: true

  before_validation :set_date

  def set_date
    self.date = Time.now.to_date
  end
end
