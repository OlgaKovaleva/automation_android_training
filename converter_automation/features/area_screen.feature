@area
Feature: User is able to convert area units

  Background:
    Given I click on Got it button
    And I land on Area screen


#  Scenario: User is able to dismiss help
#    Given I land on help popup
#    When I click on Got it button
#    Then I land on Area screen

@swap
  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    Then I see "Sq Kilometre" in To header

@convert
Scenario Outline: User is able to convert default units
  Given I click on Clear button
  When I enter "<target>" to From field
  Then I get "<result>" in To field

  Examples:
  |target|result|
  |1     |1000000|
  |2     |2000000|
  |3     |3000000|

@softkeyboard
  Scenario: User is able to use soft keyboard to enter values
    Given I click on Clear button
    When I click on From field
    And I press "12" on soft keyboard
    Then I get "12000000" in To field

  @convert @wip
  Scenario Outline: User is able to select  other unit
    When I select "<target>" from left column
    Then I see "<target>" in From header
    And I get "<result>" in To field
    Examples:
      |target|result|
      |Sq Kilometre |1000000|
      |Sq Metre     |1|
      |Sq Centimetre|0.0001|