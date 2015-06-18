require "rails_helper"

RSpec.describe StaticsController, type: :controller do
  allow_user_to :manage, :all

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
