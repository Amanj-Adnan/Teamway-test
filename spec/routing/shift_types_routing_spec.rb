require "rails_helper"

RSpec.describe ShiftTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shift_types").to route_to("shift_types#index")
    end

  end
end
