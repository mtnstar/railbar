require 'rails_helper'

describe "turbo frame status", type: :request do
  describe "GET /railbar/turbo_frame_status" do
    it "returns 404 for non turbo request" do
      get "/railbar/turbo_frame_status"
      expect(response).to have_http_status(:not_found)
    end
  end
end
