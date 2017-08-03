require 'rails_helper'

feature "User can view recent activity" do
  scenario "user can see recent commits on page" do

    visit '/dashboard'

    expect(page).to have_selector(".img-circle img-thumbnail home-image")
    expect(page).to have_selector(".user_nickname")
    expect(page).to have_selector(".user_email")
    expect(page).to have_selector(".user_starred_repos")
    expect(page).to have_selector("Followers")
    expect(page).to have_selector("Following")
  end
end
