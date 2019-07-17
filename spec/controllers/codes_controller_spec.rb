require 'rails_helper'

RSpec.describe CodesController, type: :controller do

  describe "#index" do
    context "as a user not to login" do
      it "returns a 302 response" do
        get :index
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        get :index
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end

  describe "#create" do
    context "as a user not to login" do
      before do
        FactoryBot.create(:user)
        FactoryBot.create(:language)
      end
      it "returns a 302 response" do
        code_params = FactoryBot.attributes_for(:code)
        post :create, params: {source: code_params }
        expect(response).to have_http_status "302"
      end
    end
  end

  describe "#update_code" do
    context "as an authorized user" do
      before do
        @user = FactoryBot.create(:user)
        FactoryBot.create(:language)
      end
      it "update the code" do
        code_params = FactoryBot.attributes_for(:code, source: "do")
        @code = FactoryBot.create(:code)
        sign_in @user
        patch :update, params: { id: @code.id, source: code_params }
        expect(@code.reload.source).to eq "do"
      end
    end
  end
end


