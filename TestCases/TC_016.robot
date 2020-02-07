*** settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources2.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup
Suite Teardown
*** variables ***
${Browser}    Chrome
${URL1}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    #[setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  testingworldindia@gmail.com
    Input Text  name:fld_password  123456

Robot Next Test case
    #[setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Select Radio Button  add_type  office