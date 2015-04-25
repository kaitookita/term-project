Feature: Edit a lecturer in Course Management
    As a registrar staff
    So that I can update a lecturer detail
    I want to edit a lecturer from Course Management database

Background: Lecturer has been added to database
    
Given the following lecturer exist

| identificationnumber | name | faculty | department | 
| 1001 | Weerachai Anotaipaiboon | Engineering | Electronic and Computer |
| 1002 | Phisan Kaewprapha | Engineering | Electronic and Computer |
| 1003 | Supakit Prueksaaroon | Engineering | Electronic and Computer |

    And I am on the Course Management home page

Scenario: Edit lecturer successfully (happy path)
    When I go to the edit lecturer page for "1001"
    And I fill in "Name" with "Choompol Boonmee"
    And I press "Submit"
    And I should see "Choompol Boonmee"

Scenario: Edit lecturer unsuccessfully (sad path)
    When I go to the edit lecturer page for "1001"
    And I fill in "Name" with ""
    And I press "Submit"
    And I should see "Name can't be blank"
