*** Settings ***
Documentation    my_super_website - Objects File.
...              This file contains the data variables needed to run the test
...              and perform the necessary assertions.
Library          SeleniumLibrary


*** Variables ***
### Browser Settings ###
${BROWSER} =                chrome
&{BROWSER_PREFS} =          autofill.profile_enabled=${False}       credentials_enable_service=${False}     profile.password_manager_enabled=${False}
${BROWSER_OPTIONS} =        add_experimental_option('excludeSwitches', ['enable-logging','enable-automation']);add_experimental_option("detach", True); add_experimental_option("prefs", ${BROWSER_PREFS})

### Data to use in the test ###
${A_LINKEDIN} =             //a[@id="LinkedIn"]
${BUTTON_BACK_TO_TOP} =     //button[@id="btn-back-to-top"]
${DIV_FAQ} =                //div[@name="FAQ"]
${DIV_WELCOME_SCREEN} =     //div[@id="welcome_screen"]
${SECTION_ABOUT_ME} =       //section[@id="about_me"]
${SECTION_SKILLS} =         //section[@id="skils"]
${SECTION_FAQ} =            //section[@id="faq"]
${URL} =    http://127.0.0.1:5500/my_super_website/index.html












