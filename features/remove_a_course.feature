Feature: Remove a course from Course Management
    As a registrar staff
    So that I can remove a course to close it
    I want to remove a course from Course Management database


Background: Course has been added to database
    
    Given the following course exist
    
    | course | coursename | lecturer | semester | year | room | examdate |
    | CN320 | Software Engineering | Weerachai Anotaipaiboon | 2 | 2014 | 315 | 14 May 2015 |
    | CN340 | Data Communication and Computer Networks I | Phisan Kaewprapha | 2 | 2014 | 316 | 15 May 2015 |
    | CN341 | Operating Systems | Supakit Prueksaaroon | 2 | 2014 | 604-2 | 15 May 2015 |
    | CN445 | Internet Technologies | Choompol Boonmee | 2 | 2014 | 316 | 17 May 2015 |
    | CN434 | Mobile Apllication Development | Piya Techateerawat | 2 | 2014 | 316 | 17 May 2014 |


    And I am on the Course Management home page

Scenario: Remove course succesfully (happy path)
    When I am on the course index page
    When I follow "CN320" to delete
    Then I should be on the course index page
    And I should not see "CN320"
