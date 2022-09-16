require 'rails_helper'

RSpec.describe ShiftType, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:type_name) }
    it { should validate_presence_of(:form_to) }
  end
end
