require "rails_helper"

RSpec.describe CitiesController, type: :controller do
  let(:city) { create(:city) }
  let(:attr) { attributes_for(:city) }
  let(:new_attr) { attributes_for(:city, postal_title: "Inte") }

  allow_user_to(:manage, :all)

  describe "GET #index" do
    it "returns http success" do
      get :index

      expect(response).to have_http_status(:success)
      expect(assigns(:cities)).to eq([city])
    end
  end

  describe "GET #show" do
    it "assigns the requested city" do
      get :show, id: city.to_param
      expect(response).to have_http_status(:success)
      expect(assigns(:city)).to eq(city)
    end
  end

  describe "GET #new" do
    it "assigns new city" do
      get :new
      expect(response).to have_http_status(:success)
      expect(assigns(:city)).to be_a_new(City)
    end
  end

  describe "POST #create" do
    it "creates a new city" do
      expect do
        post :create, city: attr
      end.to change(City, :count).by(1)
    end
  end

  describe "PATCH #update" do
    it "updates requested product" do
      patch :update, id: city.to_param, city: new_attr

      city.reload
      expect(city.postal_title).to eq(new_attr[:postal_title])
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      city
    end

    it "reduces count by 1" do
      expect do
        delete :destroy, id: city.to_param
      end.to change(City, :count).by(-1)
    end
  end
end
