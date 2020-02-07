*** settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources1.robot
Documentation  This file is used for automation of opening and maximizing of browser
*** variables ***
${Browser}  Chrome
${URL1}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    [Documentation]  This testcase deals with different argument types and return
#Without arguments
    #Start Browser and Maximize
    #input text  name:fld_username  helloworld
#With arguments
    #Start Browser and Maximize  ${URL3}  ${Browser}
    #input text  name:fld_username  helloworld
#With arguments and return value
    ${res}=  Start Browser and Maximize  ${URL3}  ${Browser}
    Log  ${res}
    log to console  ${res}