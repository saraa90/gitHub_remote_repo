@dash

Scenario: Verify the presence of headers on the Dashboard page
  Given I am on the crater login page
  When I enter my email and password
  And I click the login button
  Then I should be redirected to the Dashboard page
  And I should see the following headers:
    | Due Invoices    |
    | Recent Estimates |
    
    @testcase4
    Scenario: Verify the presence of graph and dropdown on the Dashboard page
  Given I am on the crater login page
  When I enter my email and password
  And I click the login button
  Then I should be redirected to the Dashboard page
  And I should see a graph under the Sales & Expenses section
  And I should see a dropdown with "This year" and "Previous year" options
    0