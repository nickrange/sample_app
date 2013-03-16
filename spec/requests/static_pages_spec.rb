#require 'spec_helper' ##removed this as it's required in the ApplicationHelper file
include ApplicationHelper

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
   
   # links
   it "should have the right links on the layout" do
     visit root_path
     click_link "About"
     page.should have_selector 'title', text: full_title('About Us')
   
     visit root_path
     click_link "Contact"
     page.should have_selector 'title', text: full_title('Contact Us')

     visit root_path
     click_link "Help"
     page.should have_selector 'title', text: full_title('Help')

     visit root_path
     click_link "Sign up now!"
     page.should have_selector 'title', text: full_title('Sign up')

     visit root_path
     click_link "sample app"
     page.should have_selector 'title', text: full_title( '' )		 
    
   end

end
