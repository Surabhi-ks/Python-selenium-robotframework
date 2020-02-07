*** settings ***
Library    SeleniumLibrary



*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** test cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    TestingWorld
    sleep    2
    Input Text    xpath://input[@name='fld_username']    testingworldindia@gmail.com
    sleep    2
    Clear Element Text     name:fld_username
    sleep    2
    Close Browser