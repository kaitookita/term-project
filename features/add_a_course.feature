Feature: Add a course to Course Management
    As a registrar staff
    So that I can show a course to student
    I want to add a course to Course Management database

Background: Course has been added to database
    
    Given the following course exist
    
    | course | coursename | lecturer | semester | year | room | examdate |
    | CN320 | Software Engineering | Weerachai Anotaipaiboon | 2 | 2014 | 315 | 14 May 2015 |
    | CN340 | Data Communication and Computer Networks I | Phisan Kaewprapha | 2 | 2014 | 316 | 15 May 2015 |
    | CN341 | Operating Systems | Supakit Prueksaaroon | 2 | 2014 | 604-2 | 15 May 2015 |
    | CN445 | Internet Technologies | Choompol Boonmee | 2 | 2014 | 316 | 17 May 2015 |
    | CN434 | Mobile Apllication Development | Piya Techateerawat | 2 | 2014 | 316 | 17 May 2014 |


    And I am on the Course Management home page

Scenario: Add course successfully (happy path)
    When I go to the add course page for "CN341"
    And I fill in "Course" with "CN341"
    And I fill in "Coursename" with "Operating System"
    And I fill in "Lecturer" with "Supakit Prueksaaroon"
    And I fill in "Semester" with "2"
    And I fill in "Year" with "2014"
    And I fill in "Room" with "604"
    And I fill in "Examdate" with "15 May 2015"
    And I press "Submit"
    When I go to the course index page
    And I should see "CN341"

Scenario: Add course unsuccessfully (sad path)
    When I go to the add course page for "CN341"
    And I fill in "Course" with ""
    And I fill in "Coursename" with "Operating System"
    And I fill in "Lecturer" with "Supakit Prueksaaroon"
    And I fill in "Semester" with "2"
    And I fill in "Year" with "2014"
    And I fill in "Room" with "604"
    And I fill in "Examdate" with "15 May 2015"
    And I press "Submit"
    And I should see "Course can't be blank"
