Feature: Purchase Flow

  Scenario: Successful purchase of a single product
    Given I login as a standard user
    When I add "Sauce Labs Backpack" to the cart
    And I complete checkout
    Then order confirmation page should be visible