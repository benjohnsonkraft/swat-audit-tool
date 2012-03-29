require 'spec_helper'
 
describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'SWAT Application'" do
			visit '/static_pages/home'
			page.should have_content('SWAT Application')
    end
		
		it "Should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "SWAT Application | Home")
		end

  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

		it "Should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "SWAT Application | Help")
		end

  end

	describe "About Page" do
		it "should have the content 'About SWAT'" do
			visit '/static_pages/about'
			page.should have_content('About SWAT')
		end

		it "Should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "SWAT Application | About")
		end

	end

end
