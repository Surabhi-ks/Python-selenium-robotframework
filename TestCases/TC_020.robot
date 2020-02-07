*** settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
*** test cases ***
TC_020 test *** Test Cases ***
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    click element  xpath://a[text()='Login']
    ${rows}=  Read Number Of Rows  Sheet2
    log to console  ${rows}

    : FOR  ${i}  IN RANGE  1  ${rows}+1
    \  ${username}=  Read Excel Data Of Cell  Sheet2  ${i}  1
    \  ${password}=  Read Excel Data Of Cell  Sheet2  ${i}  2
    \  input text  id:username  ${username}
    \  input text  id:password  ${password}
    \  Click Button  xpath://button[@type='submit']
    \  sleep  3
    Close Browser