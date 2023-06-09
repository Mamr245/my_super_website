*** Settings ***
Documentation    RFW Training - Final Challenge Locator Objects File
...              This file contains the locators' variables needed to run the test
...              and perform the necessary assertions.
Resource         ../Objects/Final_Challenge_Objects_Data.robot

*** Variables ***
${A_ADDCOSTUMER} =       //a[@href="add_customer.php"]
${A_DELETE_COSTUMER} =   //li[@class="dropdown open"]/ul/li/a[contains(text(),"Delete")]
${A_MANAGE_COSTUMER} =   //li[@class="dropdown open"]/ul/li/a[contains(text(),"Manage")]
${A_MYACCOUNT} =         //a[@href="#"]
${A_LOGOUT} =            //a[@href="logout.php"]
${A_REPORT} =            //a[@href="report_chart.php"]
${A_SEARCH} =            //a[@href="search.php"]

${BUTTON_ADDCOSTUMER} =      //span[@class="glyphicon glyphicon-send"]/parent::button[@type="submit"]
${BUTTON_CHECKALL} =         //input[@id="check1"]
${BUTTON_LOGIN} =            //input[@type="submit" and @value="Login"]
${BUTTON_SIGNUP} =           //input[@type="submit" and @value="Sign up"]
${BUTTON_VIEWME} =           //button[@type="button" and @style="float:right;"]

${CHECKBOX_TERMS} =     //em[text()="I agree with terms and conditions "]/preceding-sibling::input[@type="checkbox" and @name="terms"]
${CHECKBOX_LOGIN} =     //em[text()="Keep me logged in "]/preceding-sibling::input[@type="checkbox" and @name="terms"]
${CHECKBOX_OPTION1} =   //label[text()="Option 1"]/input[@type="checkbox"]
${CHECKBOX_OPTION2} =   //label[text()="Option 2"]/input[@type="checkbox"]
${CHECKBOX_OPTION3} =   //label[text()="Option 3"]/input[@type="checkbox"]
${CHECKBOX_OPTION4} =   //label[text()="Option 4"]/input[@type="checkbox"]

${DIV_CHART} =   //div[@id="chartdiv"]
${H3_VIEWME} =   //h3[@style="margin:0;"]

${INPUT_ADDRESS} =              //input[@name="address"]
${INPUT_CONFIRM_PASSWORD} =     //input[@name="fld_cpassword"]
${INPUT_COSTUMER_AGE} =         //input[@name="age"]
${INPUT_COSTUMER_CITY} =        //input[@name="city"]
${INPUT_COSTUMER_CONTACT} =     //input[@name="contact"]
${INPUT_COSTUMER_EMAIL} =       //input[@name="email"]
${INPUT_COSTUMER_FIRST_NAME} =  //input[@name="first_name"]
${INPUT_COSTUMER_LAST_NAME} =   //input[@name="last_name"]
${INPUT_DOB} =                  //input[@name="dob"]
${INPUT_EMAIL} =                //input[@name="fld_email"]
${INPUT_PASSWORD_LOGIN} =       //input[@name="_txtPassword"]
${INPUT_PASSWORD_SIGNUP} =      //input[@name="fld_password"]
${INPUT_PHONE} =                //input[@name="phone"]
${INPUT_SEARCH} =               //input[@type="search"]
${INPUT_USERNAME_LOGIN} =       //input[@name="_txtUserName"]
${INPUT_USERNAME_SIGNUP} =      //input[@name="fld_username"]
${INPUT_ZIP} =                  //input[@name="zip"]

${LABEL_LOGIN} =    //label[@for="tab2" and text()="Login"]

${MSG_CUSTOMER_ADDED} =     //i[@class="fa fa-check-circle vd_green"]
${MSG_CUSTOMER_DELETED} =   //div[@id="close"]

${SELECT_CITY} =                //select[@id="cityId"]
${SELECT_COSTUMER_COUNTRY} =    //select[@id="country"]
${SELECT_COSTUMER_COURSE} =     //select[@name="fld_courses"]
${SELECT_COSTUMER_STATE} =      //select[@name="state"]
${SELECT_COUNTRY} =             //select[@id="countryId"]
${SELECT_GENDER} =              //select[@name="sex"]
${SELECT_STATE} =               //select[@id="stateId"]

${TABLE_SEARCH} =               //table[@id="example"]
${TABLE_COSTUMERS} =            //form[@id="contact_form"]

${TSPAN_COUNTRY_TO_CHECK} =     //*[local-name()="tspan" and contains(text(), "Lithuania")]

