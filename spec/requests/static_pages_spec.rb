require 'spec_helper'

describe "Static pages" do

 describe "Home page" do

    it "should have the content 'Meetume'" do
      visit '/'
      page.should have_content('Meetume')
    end
    
    it "should have the right title" do
    visit '/'
    page.should have_selector('title', :text => "Meetume")
  end
  end


 describe "Help page" do

      it "should have the content 'Help'" do
        visit '/help'
        page.should have_content('Help')
      end
      it "should have the right title" do
      visit '/help'
      page.should have_selector('title', :text => "Meetume | Help")
    end
    end
    
 describe "About page" do

       it "should have the content 'About Us'" do
         visit '/about'
         page.should have_content('About Us')
       end
       
       it "should have the right title" do
       visit '/about'
       page.should have_selector('title', :text => "Meetume | About Us")
     end
     end
     
  describe "Contact page" do

        it "should have the content 'Contact'" do
        visit '/contact'
        page.should have_content('Contact')
          end
          
      it "should have the right title" do
      visit '/contact'
      page.should have_selector('title', :text => "Meetume | Contact")
   end
end
end