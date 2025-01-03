require "rails_helper"

describe "turbo frame status", type: :feature do

  before do
    visit "/"
  end

  context "with javascript enabled" do
    it "renders green status badge if turbo frames are working" do
      expect(page).to have_css("railbar item.ok", text: "Turbo Frames")
      click_link "Demo Show (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "Turbo Frames")
      click_link "Back to index (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "Turbo Frames")
    end
  end
end
