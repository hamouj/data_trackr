class Student < ApplicationRecord
  has_many :teacher_students
  has_many :teachers, through: :teacher_students
  has_many :academic_goals

  validates_presence_of :first_name, :grade

  enum grade: ['K', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13+']
end
