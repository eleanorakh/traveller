Feature: Adding an item/site for a previously visited place
  So the user can remember where they have been
  So the user can add pinpoints for visited locations

  Scenario:
    Given I am a person
    And I have no location set for yesterday
    When I click the ‘New location’ button
    Then I should see the new location form

  Scenario:
    Given I am person
    And I have some locations
    When I click a location
    Then I should see the add restaurant/historical monument/e.c.t button

# What I want: Have a form with location where you can either select or type in your own (maybe GPS coordinates?).
# This is city/town locations, not sites.
# Data from google maps?
# Then enter the date that you were there.
# Then a Success! page. (You’ve been to Como! for example) Then a ‘What did you do in Como?’ ‘Where did you stay, where did you eat, what museums did you go to’.
# Can either be entered manually or selected from auto-fill preferences.
# For these feature bits, have them categorised on the maps with different coloured points.
# Towns/cities in red, museums blue, e.c.t. upload pictures feature. (maybe could sync with iPhone location albums? - but only if you hit sync or something.)

Feature: Viewing locations
  So the user can view the data they have entered

  Scenario: Viewing past locations
    Given I am a person
    And I have some past locations
    Then I should see the past locations

  Scenario: Viewing future locations
    Given I am a person
    And I have some future locations
    Then I should see the future locations

  Scenario: Viewing past and future locations
    Given I am a person
      And I have some future locations
      And I have some past locations
     Then I should see the future locations above the past locations
     Then future locations should be separated from the past locations

  Scenario: Viewing more information about a location
    Given I am a person
    And I have a location
    And I am viewing the locations index
    When I click a location
    Then I should see more details about the location
