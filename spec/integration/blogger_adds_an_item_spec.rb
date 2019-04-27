require 'rails_helper.rb'

feature"Blogger adds an item" do

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

    # scenario "Blogger wants to go to edit page after viewing item" do

    #     visit items_path

    #     click_link "Edit"

    #     expect(page).to have_content("Edit Meal Item Listing")

    #     expect(page).to have_link("Back")

    #     expect(page).to have_link("submit")

    # end

end