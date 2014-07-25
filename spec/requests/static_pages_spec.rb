require 'rails_helper'

feature "Static pages" do
  feature "Home page" do
    scenario "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    scenario "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  feature "Help page" do
    scenario "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    scenario "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end


  feature "About page" do
    scenario "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    scenario "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

end
