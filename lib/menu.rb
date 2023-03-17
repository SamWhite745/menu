class Menu
  def initialize(menu_items)
    @menu_items = menu_items
    @basket = []
  end

  def see_menu
    return @menu_items.map{ |item| item.format }
  end
  
  def add_to_basket(menu_item)
    @basket << text_to_item(menu_item)
  end

  def remove_from_basket(menu_item)
  end

  def view_basket
    return "Nothing in basket!" if @basket.empty?
    return [@basket.map {|item| item.format}, "Total: £#{basket_total}"]
  end

  def basket_total
    return @basket.map {|item| item.price}.sum.round(2)
  end

  def send_text(phone_num)
  end

  private

  def text_to_item(text)
    return @menu_items.select {|menu_item| menu_item.item == text}.first
  end
end