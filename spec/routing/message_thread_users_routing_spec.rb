require "rails_helper"

RSpec.describe MessageThreadUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_thread_users").to route_to("message_thread_users#index")
    end

    it "routes to #new" do
      expect(:get => "/message_thread_users/new").to route_to("message_thread_users#new")
    end

    it "routes to #show" do
      expect(:get => "/message_thread_users/1").to route_to("message_thread_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/message_thread_users/1/edit").to route_to("message_thread_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/message_thread_users").to route_to("message_thread_users#create")
    end

    it "routes to #update" do
      expect(:put => "/message_thread_users/1").to route_to("message_thread_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_thread_users/1").to route_to("message_thread_users#destroy", :id => "1")
    end

  end
end
