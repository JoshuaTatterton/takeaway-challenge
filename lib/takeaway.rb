require_relative "text"

class Takeaway

  attr_reader :menu, :price, :order

  def initialize(text)
    @text=text
    @menu = { "pizza" => 5.95, "pasta" => 6.45, "curry" => 6.95, "toast" => 0.1, "fajitas" => 6.45, "bacon sandwich" => 3.50, "steak and chips" => 10.95 }
    @order = []
    @price = 0
  end

  def place_order(*items,cust_price)
    @cust_price = cust_price

    item_checker(items)
  end

  private

  attr_accessor :text, :cust_price

  def item_checker(items)
    items.each do |item|
      fail "Apologies, we do not have #{item} on the menu." if !menu.include?(item)
      order << item 
    end

    price_adder
  end

  def price_adder
    order.each { |y| @price += menu[y] }

    price_checker
  end

  def price_checker
    fail "Your order costs £#{"%.2f"% price} not £#{"%.2f"% cust_price}" if !same_price?

    text_sender
  end

  def text_sender
    time = Time.new + 3600
    @text.send_text("Thank you! Your order was placed and will be delivered before #{ time.strftime("%H:%M") }")
  end

  def same_price?
    cust_price == price
  end

end