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
    Select Checkbox    name:terms
    sleep    2
    Select Radio Button    add_type    office
    sleep    2
    Click Link    xpath://a[text()='Read Detail']
    sleep    1
    Click Element    xpath://a[@class='close']
    Close Browser

Robot Second Test Case
    Open Browser    ${URL2}    ${Browser}
    Maximize Browser Window
    Input Text    id:email    chubba05@gmail.com
    Input Text    id:pass    sunnybangu
    Click Button    xpath://input[@type='submit']
