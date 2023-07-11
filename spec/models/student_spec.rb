require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'associations' do
    it { should have_many :teacher_students }
    it { should have_many(:teachers).through(:teacher_students) }
    it { should have_many :academic_goals }
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :grade }
  end

  describe 'enums' do
    it {
      should define_enum_for(:grade).with_values([ 'K', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12',
                                                   '13+' ])
    }
  end
end
