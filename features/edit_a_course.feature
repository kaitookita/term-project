Feature: Edit a course in Course Management
    As a registrar staff
    So that I can update a course detail
    I want to edit a course from Course Management database


Background: Course has been added to database
    
Given the following course exist

| course | coursename | lecturer | semester | year | room | examdate |
| CN320 | Software Engineering | Weerachai Anotaipaiboon | 2 | 2014 | 315 | 14 May 2015 |
| CN340 | Data Communication and Computer Networks I | Phisan Kaewprapha | 2 | 2014 | 316 | 15 May 2015 |
| CN341 | Operating Systems | Supakit Prueksaaroon | 2 | 2014 | 604-2 | 15 May 2015 |
| CN445 | Internet Technologies | Choompol Boonmee | 2 | 2014 | 316 | 17 May 2015 |
| CN434 | Mobile Apllication Development | Piya Techateerawat | 2 | 2014 | 316 | 17 May 2014 |
 
 
    And I am on the Course Management home page

Scenario: Edit a course successfully (happy path)
    When I go to the edit course page for "CN320"
    And I fill in "Coursename" with "Software Engineering 2 "
    And I press "Submit"
    Then I should see "Software Engineering 2 "

Scenario: Edit a course unsuccessfully (sad path)
    When I go to the edit course page for "CN320"
    And I fill in "Course" with ""
    And I fill in "Coursename" with "Software Engineering " 
    Then I press "Submit"
    Then I should see "Course can't be blank"
    