require 'spec_helper'

describe "Users" do

    subject { page }

    describe "profile page" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit user_path(user) }

      it { should have_selector('h1',    text: user.name) }
      it { should have_selector('title', text: user.name) }
    end
  
  describe "Join Page" do
    
    it "should have the content 'Join'" do
      visit '/join'
      page.should have_content('Join')
    end
  end
  
  describe "join" do

      before { visit join_path }

      describe "with invalid information" do
        it "should not create a user" do
          expect { click_button "Create my account" }.not_to change(User, :count)
        end
      end
    end  
end