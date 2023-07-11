require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe 'associations' do
    it { should have_many :teacher_students }
    it { should have_many(:students).through(:teacher_students) }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_uniqueness_of :email }
  end
end
