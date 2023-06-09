*** Settings ***
Documentation    RFW Training - Final Challenge Test File
...              robot -d ..\Results Final_Challenge.robot
Resource         ../Actions/Final_Challenge_Actions.robot

*** Test Cases ***
RFW - Final Challenge
    [Tags]    FinalChallenge    E2E
    Open Browser and Load Site
#    Verify Back to Top Button
#    Login with Registered User
#    Click View Me Message
#    Check Report
#    Search Database
#    Add Costumer
#    Manage Costumer
#    Delete Costumer
#    Logout
