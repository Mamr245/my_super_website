*** Settings ***
Documentation    my_super_website - Test File
...              robot -d ..\Results my_super_website_tests.robot
Resource         ../Actions/my_super_website_actions.robot

*** Test Cases ***
MSW - Overall WebSite Checkup
    [Tags]    Checkup
    Open Browser and Load Site
    Validate Back to Top Button
    Validate links to LinkedIn page
    Validate link to GitHub page
    Validate size responsiveness of page