require "rails_helper"

RSpec.describe PrivateMessageStatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/private_message_states").to route_to("private_message_states#index")
    end

    it "routes to #new" do
      expect(:get => "/private_message_states/new").to route_to("private_message_states#new")
    end

    it "routes to #show" do
      expect(:get => "/private_message_states/1").to route_to("private_message_states#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/private_message_states/1/edit").to route_to("private_message_states#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/private_message_states").to route_to("private_message_states#create")
    end

    it "routes to #update" do
      expect(:put => "/private_message_states/1").to route_to("private_message_states#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/private_message_states/1").to route_to("private_message_states#destroy", :id => "1")
    end

  end
end
