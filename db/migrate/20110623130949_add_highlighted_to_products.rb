class AddHighlightedToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :highlighted, :boolean, :default => false
  end

  def self.down
    remove_column :products, :highlighted
  end
end
