require 'spree_core'
require 'spree_highlighted_products_hooks'

module SpreeHighlightedProducts
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../app/helpers/*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      ProductsHelper.module_eval do
        include HighlightedProductsHelper
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
