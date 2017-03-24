require 'rails_helper'

RSpec.describe "WorkShops", type: :request do
  describe "GET /work_shops" do
    it "works! (now write some real specs)" do
      get work_shops_path
      expect(response).to have_http_status(200)
    end
  end
end
