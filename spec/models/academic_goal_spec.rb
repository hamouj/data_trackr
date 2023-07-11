require 'rails_helper'

RSpec.describe AcademicGoal, type: :model do
  describe 'associations' do
    it { should belong_to :student }
    it { should have_many :academic_datas }
  end

  describe 'validations' do
    it { should validate_presence_of :goal }
    it { should validate_presence_of :trials }
    it { should validate_presence_of :category }
    it { should validate_presence_of :frequency }
  end

  describe 'enums' do
    it { should define_enum_for(:category).with_values(['reading', 'writing', 'math']) }
  end
end
