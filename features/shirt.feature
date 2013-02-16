Feature: Shirt
  In order to look good
  As a user
  I want to be able to customize and purchas shirts

  @javascript
  Scenario: User purchase customized shirt
    Given I am a visitor
    And 5 shirts
    When I select a fabric
    And I choose a collar
    And I choose cuffs
    And I create a monogram
    And I enter my measurements
    And I enter my body shape
    And I checkout
    Then I should see a purchase confirmation
