require 'rails_helper'



RSpec.describe "/shifts", type: :request do

  before(:all) do
    @worker = create(:worker)
    @shift_type = create(:shift_type)
  end

  let(:valid_attribute) {
    {
      working_date: Faker::Date.in_date_period, worker_id: @worker.id, shift_type_id:@shift_type.id
    }
  }

  let(:valid_attributes) {
    {
      date: Faker::Date.in_date_period, worker_id: @worker.id, shift_type_id:@shift_type.id
    }
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Shift.create! valid_attribute
      get shifts_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      shift = Shift.create! valid_attribute
      get shift_url(shift), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Shift" do
        expect {
          post shifts_url,
               params:  valid_attributes , headers: valid_headers, as: :json
        }.to change(Shift, :count).by(1)
      end

      it "renders a JSON response with the new shift" do
        post shifts_url,
             params:  valid_attributes , headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/vnd.api+json"))
      end
    end


  end



  describe "DELETE /destroy" do
    it "destroys the requested shift" do
      shift = Shift.create! valid_attribute
      expect {
        delete shift_url(shift), headers: valid_headers, as: :json
      }.to change(Shift, :count).by(-1)
    end
  end
end
