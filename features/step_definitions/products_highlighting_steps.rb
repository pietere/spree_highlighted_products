Given /^a set of highlighted products$/ do
  @products = []

  taxonomy = Factory :taxonomy, :name => "Salads"
  root = taxonomy.root
  veggie_taxon = taxonomy.taxons.create(:name => 'Veggie', :parent_id => root.id)

  3.times do |n|
    @products << Factory(:product, :name => "Salad ##{n}", :highlighted => true)
    @products.last.taxons << veggie_taxon
  end
end

Then /^I should see the products on the Highlighted section$/ do
  @products.each do |product|
    Then %Q{I should see "#{product.name}" within the highlighted section}
  end
end


