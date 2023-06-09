*** Settings ***
Documentation    my_super_website - Objects File.
...              This file contains the variables needed to run the test
...              and perform the necessary assertions.
Library          SeleniumLibrary


*** Variables ***
### Browser Settings ###
${BROWSER} =                chrome
&{BROWSER_PREFS} =          autofill.profile_enabled=${False}       credentials_enable_service=${False}     profile.password_manager_enabled=${False}
${BROWSER_OPTIONS} =        add_experimental_option('excludeSwitches', ['enable-logging','enable-automation']);add_experimental_option("detach", True); add_experimental_option("prefs", ${BROWSER_PREFS})

### Locators ###
${A_LINKEDIN} =             //a[@id="LinkedIn"]
${BUTTON_BACK_TO_TOP} =     //button[@id="btn-back-to-top"]
${DIV_FAQ} =                //div[@name="faq"]
${DIV_SKILLS} =             //div[@name="skills"]
${DIV_WELCOME_SCREEN} =     //div[@id="welcome_screen"]
${I_LINKEDIN} =             //i[@class="fa fa-linkedin-square fa_custom"]
${I_GITHUB} =               //i[@class="fa fa-github fa_custom"]
${IMG_SKILLS} =             //img[@src="images/skillsbw.jpg"]
${IMG_ABOUT_ME} =           //img[@src="images/room.png"]
${SECTION_ABOUT_ME} =       //section[@id="about_me"]
${SECTION_SKILLS} =         //section[@id="skills"]
${SECTION_FAQ} =            //section[@id="faq"]
${LI_FIND_ABOUT_MIGUEL} =     //h2[contains(text(), "find out more about Miguel?")]/preceding-sibling::input[@type="checkbox"]/parent::li

### Data to use in the test ###
${URL} =    http://127.0.0.1:5500/my_super_website/index.html












