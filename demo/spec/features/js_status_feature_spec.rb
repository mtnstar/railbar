require "rails_helper"

describe "javascript status", type: :feature do

  before do
    visit "/"
  end

  context "with javascript enabled" do
    it "renders green status badge if js is working" do
      expect(page).to have_css("railbar item.ok", text: "JS")
      click_link "Demo Show (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "JS")
      click_link "Back to index (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "JS")
    end
  end
end
