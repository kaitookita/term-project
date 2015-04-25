Feature: Add a lecturer to Course Management
    As a regitrar staff
    So that I can show a lecturer to student
    I want to add a lecturer to Course Management database

Background: Lecturer has been added to database
    
Given the following lecturer exist

| identificationnumber | name | faculty | department | 
| 1001 | Weerachai Anotaipaiboon | Engineering | Electronic and Computer |
| 1002 | Phisan Kaewprapha | Engineering | Electronic and Computer |
| 1003 | Supakit Prueksaaroon | Engineering | Electronic and Computer |

    And I am on the Course Management home page

Scenario: Add lecturer successfully (happy path)
    When I go to the add lecturer page for "Choompol Boonmee"
    And I fill in "Identificationnumber" with "20065"
    And I fill in "Name" with "Choompol Boonmee"
    And I fill in "Faculty" with "Engineering"
    And I fill in "Department" with "Electronic and Computer"
    And I press "Submit"
    And I should see "Choompol Boonmee"

Scenario: Add lecturer unsuccessfully (sad path)
    When I go to the add lecturer page for "Choompol Boonmee"
    And I fill in "Identificationnumber" with ""
    And I fill in "Name" with "Choompol Boonmee"
    And I fill in "Faculty" with "Engineering"
    And I fill in "Department" with "Electronic and Computer"
    And I press "Submit"
    And I should see "Identificationnumber can't be blank"
