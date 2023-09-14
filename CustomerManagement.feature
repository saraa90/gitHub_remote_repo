
@customerManagementTest
Feature: Customer Management

  @newCustomerBTNTest
  Scenario: As user when I navigate to the Customer tab, I should see New customer button
    Given Given As entity user , I am logged in
    When I navigate to the customer tab 
    Then I should see the New Customer button displayed
   
  @tag2
   
    Scenario: Verify basic information form label
  Given I go to the login page
  When I enter the credentials email: dummy@primetechschool.com password: primetech@school
  And I click the login button
  And I navigate to the customers tab
  And I click on New Customer button
  Then I should see the basic information form label.
 
 
 @tag3   
   
   Feature: Verify customer list table displays

Scenario: Verify customer list table displays
  Given I am on the crater login page
  When I enter the credentials email: dummy@primetechschool.com password: primetech@school
  And I click the login button
  And I navigate to the customers tab
  Then I verify that a customer list table displays
   