require 'rails_helper'

RSpec.describe Worker, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
  end
end
