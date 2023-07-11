require 'rails_helper'

RSpec.describe TeacherStudent, type: :model do
  describe 'associations' do
    it { should belong_to :teacher }
    it { should belong_to :student }
  end
end
