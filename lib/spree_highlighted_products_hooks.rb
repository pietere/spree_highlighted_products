class SpreeHighlightedProductsHooks < Spree::ThemeSupport::HookListener
  insert_after :homepage_sidebar_navigation, :partial => "shared/highlighted_products"
end
