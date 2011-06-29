Spree::BaseHelper.class_eval do
  def get_highlighted_products
    @highlighted_products ||= Product.where(:highlighted => true).last(3)
  end
end
