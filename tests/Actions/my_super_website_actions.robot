*** Settings ***
Documentation    RFW Training - Final Challenge Objects File
...              This file contains the user defined keywords to run the test
Resource         ../Objects/my_super_website_objects.robot

*** Keywords ***
Open Browser and Load Site
    ${original_speed} =    Get selenium speed
    Set Suite Variable    ${default_speed}    ${original_speed}
    Open browser    ${URL}  ${BROWSER}  options=${BROWSER_OPTIONS}
    Wait until page contains element    ${DIV_WELCOME_SCREEN}
    Wait until page contains element    ${SECTION_ABOUT_ME}
    Wait until page contains element    ${SECTION_SKILLS}
    Wait until page contains element    ${SECTION_FAQ}
    Maximize browser window

Validate Back to Top Button
    Set Selenium Speed                  ${CUSTOM_SPEED}
    Element should not be visible       ${BUTTON_BACK_TO_TOP}
    Click element                       ${DIV_SKILLS}
    Wait until element is visible       ${BUTTON_BACK_TO_TOP}
    Click button                        ${BUTTON_BACK_TO_TOP}
    Wait until element is not visible   ${BUTTON_BACK_TO_TOP}   5
    Set Selenium Speed                  ${default_speed}

Validate links to LinkedIn page
    Click element                       ${I_LINKEDIN}
    # Switch tabs, verify url, close tab, switch to original tab 
    ${handles} =  Get Window Handles
    Switch Window   ${handles}[1]
    Location should contain     linkedin
    Close window
    Switch Window   ${handles}[0]
    # Same process but first go the link at the bottom of the page
    Set Selenium Speed                  ${CUSTOM_SPEED}
    Click element                       ${DIV_FAQ}
    Wait until element is visible       ${LI_FIND_ABOUT_MIGUEL}
    Click element                       ${LI_FIND_ABOUT_MIGUEL}
    Click element                       ${A_LINKEDIN}
    Set Selenium Speed                  ${default_speed}
    ${handles} =  Get Window Handles
    Switch Window   ${handles}[1]
    Location should contain     linkedin
    Close window
    Switch Window   ${handles}[0]

Validate link to GitHub page
    Set Selenium Speed      ${CUSTOM_SPEED}
    Click button            ${BUTTON_BACK_TO_TOP}
    Click element           ${I_GITHUB}
    Set Selenium Speed      ${default_speed}
    ${handles} =  Get Window Handles
    Switch Window   ${handles}[1]
    Location should contain     github
    Close window
    Switch Window   ${handles}[0]

Validate size responsiveness of page
    # Validate if the website is responsive
    Set window size     500     500
    Element should not be visible   ${IMG_SKILLS}
    Element should not be visible   ${IMG_ABOUT_ME}
    Set window size     1500     500
    Element should be visible       ${IMG_SKILLS}
    Element should be visible       ${IMG_ABOUT_ME}
    Close All Browsers