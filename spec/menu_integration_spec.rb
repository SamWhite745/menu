require 'menu_item'
require 'menu'

RSpec.describe "menu integration" do
  context "initalizes with menu items" do
    it "shows the menu items" do
      menu_item_1 = MenuItem.new("Pepperoni", 9.99)
      menu_item_2 = MenuItem.new("Hawaiian", 11.50)
      menu = Menu.new([menu_item_1, menu_item_2])
      expect(menu.see_menu).to eq ["Pepperoni - £9.99", "Hawaiian - £11.50"]
    end

    it "returns a message explaining an empty basket" do
      menu_item_1 = MenuItem.new("Pepperoni", 9.99)
      menu_item_2 = MenuItem.new("Hawaiian", 11.50)
      menu = Menu.new([menu_item_1, menu_item_2])
      expect(menu.view_basket).to eq "Nothing in basket!"
    end
  end

  context "adds item(s) to the basket" do
    it "returns the cost of the one item in the basket" do
      menu_item_1 = MenuItem.new("Pepperoni", 9.99)
      menu_item_2 = MenuItem.new("Hawaiian", 11.50)
      menu = Menu.new([menu_item_1, menu_item_2])
      menu.add_to_basket("Pepperoni")
      expect(menu.basket_total).to eq 9.99
    end

    it "returns the cost of the multiple items in the basket" do
      menu_item_1 = MenuItem.new("Pepperoni", 9.99)
      menu_item_2 = MenuItem.new("Hawaiian", 11.50)
      menu = Menu.new([menu_item_1, menu_item_2])
      menu.add_to_basket("Pepperoni")
      menu.add_to_basket("Hawaiian")
      expect(menu.basket_total).to eq 21.49
    end

    it "returns the cost when there are multiple of the same item in the basket" do
      menu_item_1 = MenuItem.new("Pepperoni", 9.99)
      menu = Menu.new([menu_item_1])
      menu.add_to_basket("Pepperoni")
      menu.add_to_basket("Pepperoni")
      expect(menu.basket_total).to eq 19.98
    end
  end
end