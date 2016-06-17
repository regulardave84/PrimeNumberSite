Feature: Prime Number Site

  Background: 
    Given I am on the Prime Number site

  Scenario Outline: A prime number is entered
    Given I enter the value "<value>"
    When I click "Is it prime?" 
    Then the message "<message>" appears 
	
  Examples:
    | value | message              |
    | 2     | 2 is a prime number! |
    | 3     | 3 is prime!          |
    | 97    | 97 is prime!         |
  
  Scenario Outline: A non-prime number is entered
    Given I enter the value "<value>"
    When I click "Is it prime?" 
    Then the message "<message>" appears 

  Examples:
    | value | message                                |
    | 0     | 0 is not a valid number.               |
    | -1    | -1 is not a valid number!  Try again!  |
    | 1     | 1 is not prime by definition!          |
    | 4     | 4 is not prime.  It is divisible by 2. |
    | 9     | 9 is not prime.  It is divisible by 3. |
  
  Scenario Outline: A value other than a number is entered
    Given I enter the value "<value>"
    When I click "Is it prime?" 
    Then the message "<value> is not a valid number!  Try again!" appears

  Examples:
    | value | 
    | a     | 
    | !     | 
    | null  |
	  
  Scenario: No value is entered
    When I click "Is it prime?" 
    Then the message " is not a valid number!  Try again!" appears
	
