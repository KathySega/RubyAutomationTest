Feature: Find Nearest Storage Facility

  As a user
  I want to be able to find the nearest storage facility
  So that I can store my belongings conveniently

  Background:
    Given I am on the homepage
    When I select 'Storage' from the top menu
    And I select 'Move-In Online Today!' from the sub-menu
    Then I should see the 'Move-In Online' page


  @happy_path
  Scenario Outline: Successfully finding the nearest storage facility using location
    Given I set my "<location>" using different inputs
    When I request to find the nearest storage facility
    Then I should be shown the nearest storage facility to location

    Examples:
      | location         |
      | 94105            |
      | San Francisco    |
      | California, MD   |
      | Salesforce Tower |

  @edge_case
  Scenario: No storage facilities are nearby
    Given I set my location in a remote area
    When I request to find the nearest storage facility
    Then I should receive a message indicating no nearby facilities

  @error_handling
  Scenario: Invalid location data
    Given I set my location with invalid data
    When I request to find the nearest storage facility
    Then I should receive a error message 

  @performance
  Scenario Outline: Finding nearest storage facility under different locations
    Given I set my "<location>" using different inputs
    When I request to find the nearest storage facility
    Then I should be shown the nearest storage facility to location

    Examples:
      | location      |
      | 10007         |
      | San Francisco |
      | Illinois, KS  |
      | Bayfront, WI  |

  # @negative_test
  # Scenario: Invalid location coordinates
  #   Given I have enabled location services
  #   But My location coordinates are invalid
  #   When I request to find the nearest storage facility
  #   Then I should receive an error message about location validity
