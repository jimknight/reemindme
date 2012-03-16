require "spec_helper"

describe TextMsgsController do
  describe "routing" do

    it "routes to #index" do
      get("/text_msgs").should route_to("text_msgs#index")
    end

    it "routes to #new" do
      get("/text_msgs/new").should route_to("text_msgs#new")
    end

    it "routes to #show" do
      get("/text_msgs/1").should route_to("text_msgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/text_msgs/1/edit").should route_to("text_msgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/text_msgs").should route_to("text_msgs#create")
    end

    it "routes to #update" do
      put("/text_msgs/1").should route_to("text_msgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/text_msgs/1").should route_to("text_msgs#destroy", :id => "1")
    end

  end
end
