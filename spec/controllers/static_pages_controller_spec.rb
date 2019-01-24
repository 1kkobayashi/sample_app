require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "#home" do
    it "homeページにアクセスできる" do
      get :home
      expect(response.status).to eq(200)
    end
  end

  describe "#help" do
    it "helpページにアクセスできる" do
      get :help
      expect(response.status).to eq(200)
    end
  end

  describe "#about" do
    it "aboutページにアクセスする" do
     get :about
     expect(response.status).to eq(200)
    end
  end
end
