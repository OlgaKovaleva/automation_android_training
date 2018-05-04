@volume
Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen
@menu
 Scenario: User is able to call menu by swiping
   When I swipe in the menu
   Then I see app menu

  Scenario Outline:
    When I swipe in the menu
    And I select "<target>" from the menu
    Then I land on "<result>" screen
    Examples:
      |target|result|
      |Currency|Currency|
      |Power|Power|
      |Volume|Volume|

