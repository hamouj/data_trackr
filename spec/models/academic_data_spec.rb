require 'rails_helper'

RSpec.describe AcademicData, type: :model do
  describe 'associations' do
    it { should belong_to :academic_goal }
  end

  describe 'validations' do
    it { should validate_presence_of :number_correct }
    it { should validate_presence_of :date }
  end
end
