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
      visit '/static_pages/help'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  feature "About page" do
    scenario "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    scenario "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  feature "Contact page" do
    scenario "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    scenario "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end

end
