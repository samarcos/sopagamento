require "rails_helper"

RSpec.describe FornecersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fornecers").to route_to("fornecers#index")
    end

    it "routes to #new" do
      expect(:get => "/fornecers/new").to route_to("fornecers#new")
    end

    it "routes to #show" do
      expect(:get => "/fornecers/1").to route_to("fornecers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fornecers/1/edit").to route_to("fornecers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fornecers").to route_to("fornecers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fornecers/1").to route_to("fornecers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fornecers/1").to route_to("fornecers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fornecers/1").to route_to("fornecers#destroy", :id => "1")
    end

  end
end
