require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have title 'Home'" do
  		visit '/static_pages/home'
  		expect(page).to have_title("Home")
  	end	
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  	it "should have title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Help")
  	end	
  end

  describe "About Page" do
  	it "should contain 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("About")
  	end	
  end
end
