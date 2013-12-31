require 'spec_helper'

feature 'User inputs food item', %q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
} do
  context "with valid attributes" do
    it "adds item to inventory" do
      visit '/inventories'
      click_on 'Add Item'

      fill_in 'Name', with: 'Eggs'
      fill_in 'Description', with: 'Goose'
      fill_in 'Quantity', with: 12

      click_on 'Add to Inventory'
      expect(page).to have_content('Item Successfully Added')
    end
  end

  context "without valid attributes" do
    it "returns an error" do
      visit '/inventories/new'
      click_on 'Add to Inventory'
      expect(page).to have_content("Name can't be blank")
      expect(page).to have_content("Description can't be blank")
      expect(page).to have_content("Quantity can't be blank")
    end
  end
end
