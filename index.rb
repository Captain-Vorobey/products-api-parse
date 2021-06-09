require_relative 'lib/reader'
require_relative 'lib/product_parser'
require_relative 'lib/cart_parser'
require_relative 'data/data'

products = Reader.new(URL).get_data
shopping_cart_data = Reader.new(SHOPPING_CART_URL).get_data

categories = ProductParser.get_categories(products)
most_popular_category = ProductParser.get_most_popular_category(categories)
p "First task result: #{most_popular_category}"

prices = ProductParser.get_prices(products)
p "Second task result: #{ProductParser.get_max_price(prices)}"

# Third task result
products = CartParser.get_products(shopping_cart_data)
hash = CartParser.get_biggest_carts(shopping_cart_data, products)

p "Ids of the largest baskets are #{hash[:biggest_shopping_carts]} and their count #{hash[:count]}"
