@createItem
  Scenario: As a user, I am able to create an item or a service
    Given As an entity user, I am logged in
    And I navigate to Items tab
    When I click on the Add Item button
    And I should be on item input page
    When I provide item information name "Coffee mug", price 1800, unit "pc", and description "a good book"
    And I click Save Item button
    Then The Item is added to the Item list table
    And I delete the item
    
    @tag2
     Scenario: As a user, I am able to create an item or a service
    Given As an entity user, I am logged in
    And I navigate to Items tab
    When I click on the Add Item button
    And I should be on item input page
    When I provide item information name "Coffee mug", price 1800, unit "pc", and description "a good book"
    And I click Save Item button
    Then The Item is added to the Item list table
    When I click on Edit button
    Then I should be on Edit items page 
    When I update the items price to "2200"
    And I click  on update item button 
    Then Items price should be update to "2200"
    And I delete the item
    
    
    
    @test2
    Scenario Outline: Create a new customer
  Given I am on the crater login page
  When I enter the credentials email: <email> password: <password>
  And I click the login button
  And I navigate to the customers tab
  And I click the new customer button
  And I enter a valid "<Display Name>" "<Email>" "<Billing Address>" and "<Shipping Address>"
    | Display Name | Email | Billing Address | Shipping Address |
    | Saraa   | sss@gmail.com  |565 main rd           | 565 main rd             |
    | SA         | row@gmail.com  | 1235 k st           | 1235 k st             |
    | joe         | joe@gmail.com  | 555 m st            | 555 m st              |
  And I click Save Customer
  Then I view the saved customer in the Customers Table
  And I delete the customer
  
  
  
  @tag3 
  Scenario: Verify the presence of buttons on the Dashboard page
  Given I am on the crater login page
  When I enter my email and password
  And I click the login button
  Then I should be redirected to the Dashboard page
  And I should see the following buttons:
    | Amount Due |
    | Customers  |
    | Invoices   |
    | Estimates  |
  

    