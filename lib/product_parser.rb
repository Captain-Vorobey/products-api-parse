class ProductParser
  def self.get_categories(products)
    categories = []

    products.each do |el|
      categories.push(el['category'])
    end
    categories
  end

  def self.get_prices(products)
    prices = []

    products.each { |el| prices << el['price'] }
    prices
  end

  def self.get_max_price(products)
    products.max
  end

  def self.get_most_popular_category(categories)
    categories.find_all { |el| categories.count(el) >= 6 }.uniq
  end
end
