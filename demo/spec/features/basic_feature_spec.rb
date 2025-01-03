require "rails_helper"

describe "Railbar basic features", type: :feature do

  before do
    visit "/"
  end

  context "with javascript enabled" do
    it "renders railbar" do
      expect(page).to have_content "Railbar"
    end
  end
end
