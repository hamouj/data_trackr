class Teacher < ApplicationRecord
  has_many :teacher_students, dependent: :destroy
  has_many :students, through: :teacher_students

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

  has_secure_password
end
