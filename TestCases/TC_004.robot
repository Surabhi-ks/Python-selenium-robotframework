*** settings ***
Library    SeleniumLibrary



*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings
${URL2}    http://www.facebook.com
*** test cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Enter Username Password Email    testing    testingworldindia@gmail.com    test123
    Close Browser
*** Keywords ***
#Without [arguments]
#Enter Username Password Email
    #Input text    name:fld_username    testing
    #Input Text    name:fld_email    testingworldindia@gmail.com
    #Input Text    name:fld_password    test123

Enter Username Password Email
#With [arguments]
    [Arguments]    ${username}    ${email}    ${password}
    Input text    name:fld_username    ${username}
    Input Text    name:fld_email    ${email}
    Input Text    name:fld_password    ${password}
