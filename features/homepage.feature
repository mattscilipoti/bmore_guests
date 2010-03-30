Feature: In order to present a welcome page to guests and ambassadors
  the homepage
  Should allow a new user to select Guest or Ambassador

  Scenario: new user comes to app
    When I go to the homepage
    Then I should see "Guests"
    And I should see "Ambassadors"

  Scenario: Guest Services
    When I go to the homepage
    And I follow "Guest"

    Then I should see "Welcome"
    Then I should see "ride from the airport" within ".guest-services"
