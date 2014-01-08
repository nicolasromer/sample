require 'spec_helper'

title = nil

describe "StaticPages" do
	let (:title){"Ruby on Rails Tutorial Sample App |"}

  describe "Home page" do
    it " 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have title the default title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("This is the Default Title")
  	end	
    it "should not have a custom title" do
      visit "/static_pages/home"
      expect(page).not_to have_title('Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  	it "should have title '#{title} Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{title} Help")
  	end	
  end

  describe "About Page" do
  	it "should contain 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have title '#{title} About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title(" #{title} About")
  	end	
  end

  describe "Contact Page" do
  	it "should contain 'Contact Us'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact Us')
  	end
  	it "should have title '#{title} Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{title} Contact")
  	end	
  end
end
