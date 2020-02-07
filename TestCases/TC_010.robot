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
    click link  xpath://a[text()='Login']
    press key  name:username  hello
    press key  xpath://button[@type='submit']  \\13
