Feature: Remove a lecturer from Course Management
    As a registrar staff
    So that I can remove a lecturer who resigned
    I want to remove a lecturer from Course Management database

Background: Lecturer has been added to database
    
Given the following lecturer exist

| identificationnumber | name | faculty | department | 
| 1001 | Weerachai Anotaipaiboon | Engineering | Electronic and Computer |
| 1002 | Phisan Kaewprapha | Engineering | Electronic and Computer |
| 1003 | Supakit Prueksaaroon | Engineering | Electronic and Computer |

    And I am on the Course Management home page

Scenario: Remove lecturer succesfully (happy path)
    Given I am on the lecturer index page
    Then I follow "Weerachai Anotaipaiboon"
    Then I should be on the lecturer index page
    And I should not see "Weerachai Anotaipaiboon"

#Scenario: Remove lecturer unsuccesfully (sad path)
#    Given I am on the lecturer index page
#    Then I follow "Taweesak Kijkanjanarat"
#    Then I should be on the lecturer index page
#    And I should see "Delete Unsuccessful"
