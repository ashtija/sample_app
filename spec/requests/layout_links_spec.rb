require 'integration_spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
#    get '/'
    visit home_path
    page.should have_content('This is the home page')
  end

  it "should have a Contact page at '/contact'" do
#    get '/contact'
    visit contact_path
    page.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
#    get '/about'
    visit about_path
    page.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
#    get '/help'
    visit help_path
    page.should have_selector('title', :content => "Help")
  end

  it "should have a signup page at '/signup'" do
#    get '/signup'
    visit signup_path
    page.should have_selector('title', :content => "Sign up")
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector('title', :content => "About")
    click_link "Help"
    page.should have_selector('title', :content => "Help")
    click_link "Contact"
    page.should have_selector('title', :content => "Contact")
    click_link "Home"
    page.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    page.should have_selector('title', :content => "Sign up")
  end

end
