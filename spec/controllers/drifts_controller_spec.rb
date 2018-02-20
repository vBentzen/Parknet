require 'rails_helper'

RSpec.describe DriftsController, type: :controller do
  let(:my_drift) { create(:drift) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns Drift.all to drift" do
      get :index
      expect(assigns(:drifts)).to eq([my_drift])
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, {id: my_drift.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_drift.id}
      expect(response).to render_template :show
    end

    it "assigns my_drift to @drift" do
      get :show, {id: my_drift.id}
      expect(assigns(:drift)).to eq(my_drift)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "initializes @drift" do
      get :new
      expect(assigns(:drift)).not_to be_nil
    end
  end

  describe "POST create" do
    it "increases the number of drifts by 1" do
      expect{ post :create, drift: {title: Faker::StarWars.character, body: Faker::HarryPotter.quote} }.to change(Drift,:count).by(1)
    end

    it "assigns Drift.last to @drift" do
      post :create, drift: {title: Faker::StarWars.character, body: Faker::HarryPotter.quote}
      expect(assigns(:drift)).to eq Drift.last
    end

    it "redirects back to drifts index path" do
      post :create, drift: {title: Faker::StarWars.character, body: Faker::HarryPotter.quote}
      expect(response).to redirect_to drifts_path
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, {id: my_drift.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, {id: my_drift.id}
      expect(response).to render_template :edit
    end

    it "assigns drift to be updated to @drift" do
      get :edit, {id: my_drift.id}
      drift_instance = assigns(:drift)
      expect(drift_instance.id).to eq my_drift.id
      expect(drift_instance.title).to eq my_drift.title
      expect(drift_instance.body).to eq my_drift.body
    end
  end

  describe "PUT update" do
    it "updates drift with expected attributes" do
      new_title = Faker::StarWars.character
      new_body = Faker::HarryPotter.quote

      put :update, id: my_drift.id, drift: {title: new_title, body: new_body}

      updated_drift = assigns(:drift)
      expect(updated_drift.id).to eq my_drift.id
      expect(updated_drift.title).to eq new_title
      expect(updated_drift.body).to eq new_body
    end

    it "redirects to the updated drift" do
      new_title = Faker::StarWars.character
      new_body = Faker::HarryPotter.quote

      put :update, id: my_drift.id, drift: {title: new_title, body: new_body}
      expect(response).to redirect_to my_drift
    end
  end

  describe "DELETE destroy" do
    it "deletes the drift" do
      delete :destroy, {id: my_drift.id}
      count = Drift.where({id: my_drift.id}).size
      expect(count).to eq 0
    end

    it "redirects to drifts index" do
      delete :destroy, {id: my_drift.id}
      expect(response).to redirect_to drifts_path
    end
  end
end
