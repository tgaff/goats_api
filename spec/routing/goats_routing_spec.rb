require "rails_helper"

RSpec.describe GoatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/goats").to route_to("goats#index")
    end

    it "routes to #show" do
      expect(:get => "/api/goats/1").to route_to("goats#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/goats").to route_to("goats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/goats/1").to route_to("goats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/goats/1").to route_to("goats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/goats/1").to route_to("goats#destroy", :id => "1")
    end

    it 'routes to POST #reset' do
      expect(post: '/api/goats/reset').to route_to('goats#reset')
    end

  end
end
