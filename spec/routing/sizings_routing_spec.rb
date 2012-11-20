require "spec_helper"

describe SizingsController do
  describe "routing" do

    it "routes to #index" do
      get("/sizings").should route_to("sizings#index")
    end

    it "routes to #new" do
      get("/sizings/new").should route_to("sizings#new")
    end

    it "routes to #show" do
      get("/sizings/1").should route_to("sizings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sizings/1/edit").should route_to("sizings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sizings").should route_to("sizings#create")
    end

    it "routes to #update" do
      put("/sizings/1").should route_to("sizings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sizings/1").should route_to("sizings#destroy", :id => "1")
    end

  end
end
