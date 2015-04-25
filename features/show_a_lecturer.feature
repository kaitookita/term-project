Feature: show a lecturer in Course Management
    As a regitrar staff
    So that I can show a lecturer to student
    I want to show a lecturer in Course Management database

Background: Lecturer has been added to database
    
Given the following lecturer exist

| identificationnumber | name | faculty | department | 
| 1001 | Weerachai Anotaipaiboon | Engineering | Electronic and Computer |
| 1002 | Phisan Kaewprapha | Engineering | Electronic and Computer |
| 1003 | Supakit Prueksaaroon | Engineering | Electronic and Computer |

    And I am on the Course Management home page
    
Scenario: Show lecturer successfully (happy path)
    When I go to the details lecturer page for "1001"
    And I should see "Weerachai Anotaipaiboon"
    And I should see "Engineering"
    And I should see "Electronic and Computer"

