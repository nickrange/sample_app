require 'spec_helper'

describe "Static pages" do
  # setup and common behaviour
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title) )} # this uses a helper function
  end
  
  # homepage
  describe "Home page" do
    before { visit root_path }
    # set the variables for the common tests
    let(:heading)    { 'Welcome to the Sample App' }
    let(:page_title) { "" }
    
    it_should_behave_like "all static pages"                        # call the common test
    it { should_not have_selector 'title', text: '| Home' }         # text was removed
  end
  # help page
  describe "Help page" do
    before { visit help_path }
    
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
    
    it_should_behave_like "all static pages"
     
  end
  # about page
  describe "About page" do
    before { visit about_path }
    
    let(:heading) { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
   end
  # contact page
  describe "Contact page" do
    before { visit contact_path }
    
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
   end
end
