require 'menu_item'

RSpec.describe MenuItem do
  context "initialize" do
    it "returns item" do
      menu_item = MenuItem.new("Pepperoni",9.99)
      expect(menu_item.item).to eq "Pepperoni"
    end

    it "returns price" do
      menu_item = MenuItem.new("Pepperoni",9.99)
      expect(menu_item.price).to eq 9.99
    end

    it "returns formatted menu item" do
      menu_item = MenuItem.new("Pepperoni",9.99)
      expect(menu_item.format).to eq "Pepperoni - £9.99"
    end
  end
end