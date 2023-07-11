class Teacher < ApplicationRecord
  has_many :teacher_students
  has_many :students, through: :teacher_students

  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email

  has_secure_password
end
