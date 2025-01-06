require "rails_helper"

describe "turbo stream form status", type: :feature do

  before do
    visit "/"
  end

  context "with javascript enabled" do
    it "renders green status badge if turbo stream for forms (post) are working" do
      expect(page).to have_css("railbar item.ok", text: "Form (POST)")
      click_link "Demo Show (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "Form (POST)")
      click_link "Back to index (Turbo Link)"
      expect(page).to have_css("railbar item.ok", text: "Form (POST)")
    end
  end
end
