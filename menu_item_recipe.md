```Ruby

class MenuItem
  def initialize(item, price)
  end

  def item
  end
  
  def price
  end
end

```


```Ruby
# 1
menu_item = MenuItem.new("Pepperoni",9.99)
menu_item.item # => "Pepperoni"

# 2
menu_item = MenuItem.new("Pepperoni",9.99)
menu_item.price # => 9.99
```