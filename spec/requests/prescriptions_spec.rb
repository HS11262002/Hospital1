require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/prescriptions", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Prescription. As you add validations to Prescription, be sure to
  # adjust the attributes here as well.
  before(:example) do
    @visit = build(:visit)
    @visit.save
    @prescription = build(:prescription , visit_id: @visit.id)
    @prescription.save
  end


  describe 'GET #index' do
    it 'returns http success' do
      get visit_prescriptions_path(:visit_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'returns http success' do
      get visit_prescriptions_path(:visit_id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get visit_prescription_path(:visit_id, :id => "@prescription.id")
      expect(response).to have_http_status(:success)
    end
  end

  # describe 'PATCH #update' do
  #   it 'returns http success' do
  #     patch visit_prescription_path(visit_id: @visit.id, prescription: @prescription, id: @prescription.id)
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # let(:valid_attributes) {
  #   {:product=>'paracetamol', :quantity=>2,:symbol=>'*', :dose=>3, :days=>5, :stock=>30, :visit_id=>1}
  # }

  # let(:invalid_attributes) {
  #   {:product=>'', :quantity=>'', :dose=>'', :symbol=>'', :days=>'', :stock=>'', :visit_id=>''}
  # }

  # # This should return the minimal set of values that should be in the headers
  # # in order to pass any filters (e.g. authentication) defined in
  # # PrescriptionsController, or in your router and rack
  # # middleware. Be sure to keep this updated too.
  # let(:valid_headers) {
  #   { 'Content-Type' => 'application/json' }
  # }

  # describe "GET /index" do
  #   it "renders a successful response" do
  #     @prescription 
  #     get visit_prescriptions_path
  #     # headers: valid_headers, as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     @prescription 
  #     get visit_prescription_path, as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Prescription" do
  #       expect {
  #         post visit_prescriptions_path,
  #              @prescription, as: :json
  #       }.to change(@prescription, :count).by(1)
  #     end

  #     it "renders a JSON response with the new prescription" do
  #       post visit_prescriptions_path,
  #            params: { prescription: valid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:created)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Prescription" do
  #       expect {
  #         post visit_prescriptions_path,
  #              params: { prescription: invalid_attributes }, as: :json
  #       }.to change(@prescription, :count).by(0)
  #     end

  #     it "renders a JSON response with errors for the new prescription" do
  #       post visit_prescriptions_path,
  #            params: { prescription: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       {:product=>'magnesium', :quantity=>2,:symbol=>'*', :dose=>3, :days=>5, :stock=>30, :visit_id=>1}
  #     }

  #     it "updates the requested prescription" do
  #       @prescription 
  #       patch visit_prescription_path(prescription),
  #             params: { prescription: new_attributes }, headers: valid_headers, as: :json
  #       @prescription.reload
  #       {:product=>'magnesium', :quantity=>2,:symbol=>'*', :dose=>3, :days=>5, :stock=>30, :visit_id=>1}
  #     end

  #     it "renders a JSON response with the prescription" do
  #       @prescription
  #       valid_attributes
  #       patch visit_prescription_path(prescription),
  #             params: { prescription: new_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a JSON response with errors for the prescription" do
  #       @prescription
        
  #       patch visit_prescription_path(prescription),
  #             params: { prescription: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested prescription" do
  #     @prescription
  #     expect {
  #       delete visit_prescription_path(prescription), headers: valid_headers, as: :json
  #     }.to change(Prescription, :count).by(-1)
  #   end
  # end
end
