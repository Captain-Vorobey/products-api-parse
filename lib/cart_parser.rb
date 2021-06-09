class CartParser
  def self.get_products(shopping_cart_data)
    products_matrix = []

    shopping_cart_data.each do |el|
      products_matrix.push(el['products'])
    end
    products_matrix
  end

  def self.find_max(products_matrix)
    arr = []

    products_matrix.each do |_el|
      arr = products_matrix.map { |row| row.count }
    end
    arr.max
  end

  def self.get_biggest_carts(shopping_cart_data, products_matrix)
    hash = {}
    max_el = find_max(products_matrix)
    ids = []
    counters = []

    shopping_cart_data.each do |el|
      hash = { biggest_shopping_carts: ids << el['id'], count: counters << max_el } if el['products'].count == max_el
    end

    hash
  end
end
