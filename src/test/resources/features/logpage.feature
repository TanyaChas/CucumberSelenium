Feature: Login Functionality for OpenCart E-commerce Website

  As a user of the OpenCart website
  I want to be able to log in with my account
  So that I can access my account-related features and manage my orders

  Background:
    Given I am on the OpenCart login page

  Scenario: Successful login with valid credentials
    Given I have entered a valid username and password
    When I click on the login button
    Then I should be logged in successfully

  Scenario Outline: Unsuccessful login with invalid or empty credentials
    Given I have entered invalid "<username>" and "<password>"
    When I click on the login button
    Then I should see an error message indicating "<error_message>"

    Examples:
      | username          | password        | error_message                         |
      | invalid@email.com | invalidPassword | Неправильно введений логін або пароль |
      | abcd              | validPassword   | Неправильно введений логін або пароль |
      | valid@email.com   | abcd            | Неправильно введений логін або пароль |

  Scenario: Navigating to the forgotten password page
    When I click on the "Забули пароль?" link
    Then I should be redirected to the password reset page