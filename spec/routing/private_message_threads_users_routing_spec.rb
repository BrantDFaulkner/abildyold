require "rails_helper"

RSpec.describe PrivateMessageThreadsUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/private_message_threads_users").to route_to("private_message_threads_users#index")
    end

    it "routes to #new" do
      expect(:get => "/private_message_threads_users/new").to route_to("private_message_threads_users#new")
    end

    it "routes to #show" do
      expect(:get => "/private_message_threads_users/1").to route_to("private_message_threads_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/private_message_threads_users/1/edit").to route_to("private_message_threads_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/private_message_threads_users").to route_to("private_message_threads_users#create")
    end

    it "routes to #update" do
      expect(:put => "/private_message_threads_users/1").to route_to("private_message_threads_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/private_message_threads_users/1").to route_to("private_message_threads_users#destroy", :id => "1")
    end

  end
end
