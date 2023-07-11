class Student < ApplicationRecord
  has_many :teacher_students, dependent: :destroy
  has_many :teachers, through: :teacher_students
  has_many :academic_goals, dependent: :destroy

  validates :first_name, :grade, presence: true

  enum grade: { 'K' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
                '10' => 10, '11' => 11, '12' => 12, '13+' => 13 }
end
