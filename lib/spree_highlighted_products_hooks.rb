class SpreeHighlightedProductsHooks < Spree::ThemeSupport::HookListener
  insert_after :homepage_sidebar_navigation, :partial => "shared/highlighted_products"
  insert_after :admin_product_form_right, :partial => "admin/products/form_highlighted"
end
