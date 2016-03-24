require "rails_helper"

RSpec.describe MessageThreadsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_threads").to route_to("message_threads#index")
    end

    it "routes to #new" do
      expect(:get => "/message_threads/new").to route_to("message_threads#new")
    end

    it "routes to #show" do
      expect(:get => "/message_threads/1").to route_to("message_threads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/message_threads/1/edit").to route_to("message_threads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/message_threads").to route_to("message_threads#create")
    end

    it "routes to #update" do
      expect(:put => "/message_threads/1").to route_to("message_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_threads/1").to route_to("message_threads#destroy", :id => "1")
    end

  end
end
