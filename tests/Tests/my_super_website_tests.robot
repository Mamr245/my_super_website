*** Settings ***
Documentation    my_super_website - Test File
...              robot -d ..\Results my_super_website_tests.robot
Resource         ../Actions/my_super_website_actions.robot

*** Test Cases ***
MSW - Overall WebSite Checkup
    [Tags]    FinalChallenge    E2E
    Open Browser and Load Site
    Validate Back to Top Button
    Validate page links to LinkedIn
    Validate size responsiveness of page
#    Check Report
#    Search Database
#    Add Costumer
#    Manage Costumer
#    Delete Costumer
#    Logout
