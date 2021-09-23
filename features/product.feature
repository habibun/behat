# This file contains a user story for demonstration only.
# Learn how to get started with Behat and BDD on Behat's website:
# http://behat.org/en/latest/quick_start.html

Feature:
    In order to manage product
    As a user
    I need to be able to add/edit/delete products

    Scenario: Add a new product
        Given I am on "/product/new"
        And I fill in "Name" with "product1"
        And I fill in "Price" with "20"
        And I press "Save"

    Scenario: List available products
        And I am on "/"
        When I click "Products"
        Then I should see 13 products
