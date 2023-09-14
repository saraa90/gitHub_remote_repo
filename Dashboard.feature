@tag 1

Scenario: Verify the presence of headers on the Dashboard page
  Given I am on the crater login page
  When I enter my email and password
  And I click the login button
  Then I should be redirected to the Dashboard page
  And I should see the following headers:
    | Due Invoices    |
    | Recent Estimates |