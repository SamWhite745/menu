```Ruby
# 1 DONE
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.see_menu # => ["Pepperoni - £9.99", "Hawaiian - £11.50"]

# 2 DONE
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.view_basket # => ["Nothing in basket!"]

# 3 DONE
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.basket_total # => 9.99

# 4 DONE
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.add_to_basket("Hawaiian")
menu.basket_total # => 21.49

# 5 DONE
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.add_to_basket("Pepperoni")
menu.basket_total # => 19.98


# 6
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.view_basket # => [["Pepperoni - £9.99"], "Total: £9.99"]

# 7
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.add_to_basket("Hawaiian")
menu.view_basket # => [["Pepperoni - £9.99", "Hawaiian - £11.50"], "Total: £21.49"]

# 8
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.add_to_basket("Pepperoni")
menu.view_basket # => [["2xPepperoni - £19.98"], "Total: £19.98"]

# 9
menu_item_1 = MenuItem.new("Pepperoni", 9.99)
menu_item_2 = MenuItem.new("Hawaiian", 11.50)
menu = Menu.new([menu_item_1, menu_item_2])
menu.add_to_basket("Pepperoni")
menu.add_to_basket("Pepperoni")
menu.remove_from_basket("Pepperoni")
menu.view_basket # => [["Pepperoni - £9.99"], "Total: £9.99"]


```