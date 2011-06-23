module HighlightedProductsHelper
  def get_highlighted_products
    Product.where(:highlighted => true)
  end
end
