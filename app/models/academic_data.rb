class AcademicData < ApplicationRecord
  belongs_to :academic_goal

  validates_presence_of :number_correct, :date
end
