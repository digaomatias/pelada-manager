require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Pelada Manager" }

  describe "Home page" do

    it "should have the h1 'Pelada Manager'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Pelada Manager')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                                :text => "Pelada Manager")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', 
                                :text => "| Home");
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', 
                                :text => "#{base_title} | Help");
    end
  end

  describe "About Page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

   it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', 
                                :text => "#{base_title} | About");
    end

  end

  describe "Contact Page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', 
                                :title => "Pelada Manager | Contact")
    end
  end
end
