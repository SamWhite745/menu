class MenuItem
  def initialize(item, price)
    @item = item
    @price = price
  end

  def item
    return @item
  end
  
  def price
    return @price
  end

  def format
    return "#{@item} - £#{sprintf('%.2f', @price)}"
  end
end