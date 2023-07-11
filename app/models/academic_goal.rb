class AcademicGoal < ApplicationRecord
  belongs_to :student
  has_many :academic_datas, dependent: :destroy

  validates :goal, :trials, :category, :frequency, presence: true

  enum category: { 'reading' => 0, 'writing' => 1, 'math' => 2 }
end
