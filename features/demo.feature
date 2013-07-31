Feature: Testing demo
  Scenario: Visit the user login page
    Given I am not logged in
    When I visit "/user"
    Then I should see the link "request a new password"

  @api
  Scenario: As a logged in user
    Given I am logged in as a user with the "administrator" role
    When I visit "/admin"
    Then I should see the link "Content"
