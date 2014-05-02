class StudentCellLeader < ActiveRecord::Base
  belongs_to :student
  belongs_to :cell_leader

  attr_accessible :date

  validates :student_id, :cell_leader_id, :date, presence: true

  before_validation :set_date


  def set_date
    self.date = Time.now.to_date
  end
end
