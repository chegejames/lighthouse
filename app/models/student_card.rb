class StudentCard < ActiveRecord::Base
  belongs_to :student
  attr_accessible :assignment_one, :assignment_two, :attendance, :attended_cell, :attended_church, :bible_reading, :days_journaled, :days_prayed, :memory_verse, :test
end
