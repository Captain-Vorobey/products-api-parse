require_relative 'lib/reader'
require_relative 'lib/product_parser'
require_relative 'data/data'

products = Reader.new(URL).get_data

categories = ProductParser.get_categories(products)

res = ProductParser.get_most_popular_category(categories)

p res
