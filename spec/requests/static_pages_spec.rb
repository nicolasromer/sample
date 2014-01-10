require 'spec_helper'

title = nil

describe "StaticPages" do

	let (:title){"Ruby on Rails Tutorial Sample App |"}

  subject{ page }

  describe "Home page" do
    before{ visit root_path }

    it{ should have_content('Sample App')}
    it{ should have_title("Ruby on Rails Tutorial Sample App") }
    it{ should_not have_title("Home") }
  end

  describe "Help page" do
    before{ visit help_path }

  	it{ should have_content "Help" }
  	it{ should have_title "#{title} Help" }
  end

  describe "About Page" do
    before{ visit about_path }
  	it{ should have_content "About Us" }
  	it{ should have_title "#{title} About" }
  end

  describe "Contact Page" do
    before{ visit contact_path }

  	it{ should have_content "Contact Us" }
  	it{ should have_title "#{title} Contact" }
  end
end
