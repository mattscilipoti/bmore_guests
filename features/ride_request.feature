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


  Scenario Outline: Basic Ride Request (required fields)

    When I go to the new Ride Request
    And I fill in the following:
      | Pickup at | <pickup_at> |
      | Email     | <email>|

    And I press "Don't Forget Me!"

    Then I should see "<error_message>" within "<error_selector>"

  Examples:
    |pickup_at |email           |error_message |error_selector|
    |          |test@example.com|can't be blank|#ride_request_pickup_at_input|
    |2001-01-01|                |can't be blank|#ride_request_email_input|


  Scenario: Ride Request Confirmation is Read Only

    When I go to the new Ride Request
    And I fill in the following:
      | Pickup at | 2010-04-01 11:12 |
      | Email     | guest@example.com|
      | Phone     | 808-555-1212    |

    And I press "Don't Forget Me!"

    #Then I should be on ride_requests/1
    And the "Pickup at" field should be read only
    And the "Email" field should be read only
    And the "Phone" field should be read only
