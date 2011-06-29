Feature: Highlighted products
  In order to be informed about the most interesting products
  As a user
  I should be able to see the highlighted products

  Scenario: User goes to the homepage
    Given a set of highlighted products
    When I go to the homepage
    Then I should see the products on the Highlighted section

    @javascript
  Scenario: Admin sets a product as highlighted
    Given I am an administrator logged in
    When I highlight a product
    Then show me the page
    Then I should see " has been successfully updated!"
