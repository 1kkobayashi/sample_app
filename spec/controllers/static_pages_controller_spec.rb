require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "#home" do
    it "homeページにアクセスできる" do
      get :home
      expect(response.status).to eq(200)
      assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "#help" do
    it "helpページにアクセスできる" do
      get :help
      expect(response.status).to eq(200)
      assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "#about" do
    it "aboutページにアクセスする" do
     get :about
     expect(response.status).to eq(200)
     assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    end
  end
end
