require "rails_helper"

RSpec.describe WorkShopsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/work_shops").to route_to("work_shops#index")
    end

    it "routes to #new" do
      expect(:get => "/work_shops/new").to route_to("work_shops#new")
    end

    it "routes to #show" do
      expect(:get => "/work_shops/1").to route_to("work_shops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/work_shops/1/edit").to route_to("work_shops#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/work_shops").to route_to("work_shops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/work_shops/1").to route_to("work_shops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/work_shops/1").to route_to("work_shops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/work_shops/1").to route_to("work_shops#destroy", :id => "1")
    end

  end
end
