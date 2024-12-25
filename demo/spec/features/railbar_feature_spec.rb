require "rails_helper"

describe "Railbar features", type: :feature do
  context "with javascript enabled", js: true do
    it "renders railbar" do
      visit "/"
      expect(page).to have_content "Railbar"
    end
  end

  context "without javascript" do
    it "renders railbar" do
      visit "/"
      expect(page).to have_content "Railbar"
    end
  end
end
