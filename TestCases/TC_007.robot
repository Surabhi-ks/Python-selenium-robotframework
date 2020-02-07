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
    set selenium timeout  20 seconds
    ${tm}=  Get Selenium Timeout
    log to console  ${tm}
    wait until page contains  testing
    ${speed}=   get selenium speed
    log to console  ${speed}
    #set selenium speed  5 seconds
    Input text    name:fld_username    test
    Input Text    name:fld_email    testing
    Input Text    name:fld_password    test1234
    ${speed}=   get selenium speed
    log to console  ${speed}
