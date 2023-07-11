class AcademicGoal < ApplicationRecord
  belongs_to :student
  has_many :academic_datas

  validates_presence_of :goal, :trials, :category, :frequency

  enum category: ['reading', 'writing', 'math']
end
