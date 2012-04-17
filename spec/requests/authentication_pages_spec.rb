require 'spec_helper'

describe "Authentication" do
  
  describe "authorization" do

     describe "for non-signed-in users" do
       
       describe "in the Users controller" do
         
         describe "visiting the user index" do
                   before { visit users_path }
                   it { should have_selector('title', text: 'login') }
                 end
               end
               
                end
                 end
               end