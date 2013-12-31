require 'spec_helper'

feature 'user views total inventory', %q{
  As a user,
  I want to view the total inventory,
  So that I know what's available
} do
  context "index of all items in inventory" do
    it "shows all items in inventory" do
      goose1 = FactoryGirl.create(:inventory, name: 'goose1')
      goose2 = FactoryGirl.create(:inventory, name: 'goose2')
      goose3 = FactoryGirl.create(:inventory, name: 'goose3')

      visit '/inventories'

      expect(page).to have_content(goose1.name)
      expect(page).to have_content(goose2.name)
      expect(page).to have_content(goose3.name)
    end
  end
end
