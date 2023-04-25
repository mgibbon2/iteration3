RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see events" do
      visit root_path
      expect(page).to have_text("Event")
    end
  end
  