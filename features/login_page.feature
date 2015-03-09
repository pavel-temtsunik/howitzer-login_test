
Feature: System of user authorisation in login page
  In order to give users ability to login into system
  As an user
  I want to login with valid credentials, and not to login with invalid credentials


  Scenario: Login with correct credentials
    Given I open login page
    When  I fill field email with "pavel.hvoya@gmail.com" and password "1QAZ2wsx"
    And I submit form
    Then I should see alert about successfull logging in



  Scenario:  Login with empty credentials
    Given I open login page
    When I submit form
    Then I should see error message


  Scenario:  Login with invalid credentials
    Given I open login page
    When I submit form
    And I fill field email with "hghgh@gmail.com" and password "1QAhZ2wsx"
    Then I should see error message





