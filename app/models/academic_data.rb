class AcademicData < ApplicationRecord
  belongs_to :academic_goal

  validates :number_correct, :date, presence: true
end
