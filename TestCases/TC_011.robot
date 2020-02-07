*** settings ***
Library    SeleniumLibrary



*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
*** test cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Open Browser    ${URL2}    ${Browser}
    Maximize Browser Window
    switch browser  1
    ${url}=     get location
    log to console  ${url}
    click element   xpath://a[text()='Login']
    switch browser  2
    ${url2}=     get location
    log to console  ${url2}
    input text  name:email  helloworld