require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "#home" do
    it "homeページにアクセスできる" do
      get :home
      expect(response.status).to eq(200)
      assert_select "title", "Home | #{base_title}"
    end
  end

  describe "#help" do
    it "helpページにアクセスできる" do
      get :help
      expect(response.status).to eq(200)
      assert_select "title", "Help | #{base_title}"
    end
  end

  describe "#about" do
    it "aboutページにアクセスする" do
     get :about
     expect(response.status).to eq(200)
     assert_select "title", "About | #{base_title}"
    end
  end

end
