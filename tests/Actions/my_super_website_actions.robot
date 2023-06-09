*** Settings ***
Documentation    RFW Training - Final Challenge Objects File
...              This file contains the user defined keywords to run the test
Resource         ../Objects/my_super_website_objects.robot

*** Keywords ***
Open Browser and Load Site
    Open browser    ${URL}  ${BROWSER}  options=${BROWSER_OPTIONS}
    Wait until page contains element    ${DIV_WELCOME_SCREEN}
    Wait until page contains element    ${SECTION_ABOUT_ME}
    Wait until page contains element    ${SECTION_SKILLS}
    Wait until page contains element    ${SECTION_FAQ}
    Maximize browser window
    Set Selenium Speed       1 second

Validate Back to Top Button
    Element should not be visible       ${BUTTON_BACK_TO_TOP}
    Click element                       ${DIV_SKILLS}
    Wait until element is visible       ${BUTTON_BACK_TO_TOP}
    Click button                        ${BUTTON_BACK_TO_TOP}
    Wait until element is not visible   ${BUTTON_BACK_TO_TOP}   5

Validate page links to LinkedIn
    Click element                       ${DIV_FAQ}
    Wait until element is visible       ${LI_FIND_OUT_MIGUEL}
    Click element                       ${LI_FIND_OUT_MIGUEL}
    Click element                       ${A_LINKEDIN}
    ${handles} =  Get Window Handles
    Switch Window   ${handles}[1]
    Location should contain     Linkedin
    Close window
    Switch Window   ${handles}[0]

Validate size responsiveness of page
    Set window size     500     500
    Element should not be visible   ${IMG_SKILLS}
    Element should not be visible   ${IMG_ABOUT_ME}




