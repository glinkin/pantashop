require "spec_helper"

describe PhoneOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/phone_orders").should route_to("phone_orders#index")
    end

    it "routes to #new" do
      get("/phone_orders/new").should route_to("phone_orders#new")
    end

    it "routes to #show" do
      get("/phone_orders/1").should route_to("phone_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phone_orders/1/edit").should route_to("phone_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phone_orders").should route_to("phone_orders#create")
    end

    it "routes to #update" do
      put("/phone_orders/1").should route_to("phone_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phone_orders/1").should route_to("phone_orders#destroy", :id => "1")
    end

  end
end
