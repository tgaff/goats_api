require 'rails_helper'

RSpec.describe "Goats", type: :request do
  describe "GET /goats" do
    it "works! (now write some real specs)" do
      get goats_path
      expect(response).to have_http_status(200)
    end
  end
end
