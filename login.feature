Feature: Login

  Scenario: Invalid login shows error
    Given I open SauceDemo login page
    When I login with invalid credentials
    Then error message should be displayed
    And user remains on login page