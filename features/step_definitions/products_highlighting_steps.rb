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

Given /^I am an administrator logged in$/ do
  taxonomy = Factory :taxonomy, :name => "Salads"
  root = taxonomy.root
  veggie_taxon = taxonomy.taxons.create(:name => 'Veggie', :parent_id => root.id)

  Factory :product, :name => "Salad"
  Factory :admin_user, :email => "hello@zorros.be"

  Given %Q{I go to the admin section}
  When %Q{I fill in "Email" with "hello@zorros.be"}
  And %Q{I fill in "Password" with "spree123"}
  And %Q{I press "Log In"}
end

When /^I highlight a product$/ do
  When %Q{I follow "Products"}
  And %Q{I follow "Edit"}
  And %Q{I check "Highlighted"}
  And %Q{I press "Update"}
end

