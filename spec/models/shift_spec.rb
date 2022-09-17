require 'rails_helper'

RSpec.describe Shift, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:working_date) }
  end
    describe 'associations' do
      it { should belong_to(:shift_type) }
      it { should belong_to(:worker)}
    end


end
