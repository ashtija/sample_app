require 'integration_spec_helper'

describe "Users" do
  describe "signup" do

    describe "failure" do

      it "should not make a new user" do
        lambda do
          visit signup_path
          fill_in "Name", :with => ""
          fill_in "Email", :with => ""
          fill_in "Password", :with => ""
          fill_in "Confirmation", :with => ""
          click_on "user_submit"
          #response.should render_template('users/new')
          page.should have_content('Sign up')
        end
      end
    end

    describe "success" do

      it "should make a new user", :js => true do
        lambda do
          visit signup_path
          fill_in "Name", :with => "Example User"
          fill_in "Email", :with => "user1@email.com"
          fill_in "Password", :with => "foobar"
          fill_in "Confirmation", :with => "foobar"
          click_on "user_submit"
          page.should have_content("Welcome")
        end
      end
    end
  end
end
