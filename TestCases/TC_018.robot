*** settings ***
Library    SeleniumLibrary
Library    locators_fetch.py
Resource  ../Resources/Resources2.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
default tags  DFLT
force tags  ALL_TC
*** variables ***
${Browser}    Chrome
${URL1}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    [tags]  smoke  testing
    #Open Browser    ${URL}    ${Browser}
    #Maximize Browser Window
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text  ${username}  Testing
    sleep  2
    Input Text  name:fld_email  testingworldindia@gmail.com
    Input Text  name:fld_password  123456

Robot Next Test case
    [tags]  sanity
    #Open Browser    ${URL}    ${Browser}
    #Maximize Browser Window
    Select Radio Button  add_type  office
*** keywords ***
Read Element Locator
    [Arguments]  ${Jsonpath}
    ${result}=  read_locator_from_json  ${Jsonpath}
    [return]  ${result}
