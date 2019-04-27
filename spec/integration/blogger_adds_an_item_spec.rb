require 'rails_helper.rb'

feature"Blogger manipulates the app" do

    scenario "Blogger successfully navigates to the new item page from the item list page" do

        visit items_path

        expect(page).to have_content("Listing items")

        click_link "Add new item"

        expect(page).to have_content("Image")
        
        expect(page).to have_content("New")

        expect(page).to have_css(".create_new_item")

    end

    scenario "Blogger successfully navigates home from the item listing page" do

        visit items_path

        expect(page).to have_content("Listing items")

        click_link "Home"

        expect(page).to have_link("Create New Item")

        expect(page).to have_link("Current Items")

    end

    scenario "Blogger wants to navigate from welcome page to view all previous entries" do

        visit root_path

        click_link "Current Items"

        expect(page).to have_content("Listing items")

        expect(page).to have_link("Home")

        expect(page).to have_link("Add new item")

    end
    
    scenario "Blogger wants to navigate from welcome page to create new item page" do

         visit root_path

        click_link "Create New Item"

        expect(page).to have_content("New Meal Item")
        
        expect(page).to have_link("Home")
        
        expect(page).to have_link("List Items")
        
    end
end