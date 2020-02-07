*** settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings
${URL2}    http://www.facebook.com
*** test cases ***
Test Case In BDD Format
    Start Browser and Maximize
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
