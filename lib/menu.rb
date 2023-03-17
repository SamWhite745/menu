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
    @basket.delete_at(@basket.index(text_to_item(menu_item)))
  end

  def view_basket
    if @basket.empty?
      return "Nothing in basket!" 
    else
      grouped = @basket.tally { |item| item.item }
      formatted = []
      p grouped
      grouped.each { |item, num|
         formatted << format(num, item)
      }
      return [formatted, "Total: £#{basket_total}"]
    end
    
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

  def format(num, item)
    num.to_i > 1 ? "#{num}x#{item.item} - £#{sprintf('%.2f', num*item.price)}" : item.format
  end
end