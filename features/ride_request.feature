Feature: In order to Get to RailsConf from the Airport
  A Guest
  Want to Request a Ride

  Scenario: Basic Ride Request (happy path)

    When I go to the new Ride Request
    And I fill in the following:
      | Pickup at | 2010-04-01 11:12 |
      | Email     | guest@example.com|
      | Phone     | 808-555-1212    |

    And I press "Don't Forget Me!"

    Then I should see "You will receive a confirmation"
    And the "Pickup at" field should contain "2010-04-01 11:12:00"
    And the "Email" field should contain "guest@example.com"
    And the "Phone" field should contain "808-555-1212"
