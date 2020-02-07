*** settings ***
Library    SeleniumLibrary
*** variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** keywords ***
Start Browser and Maximize
    Open Browser    ${URL}    ${Browser}
    Maximize browser Window

Close Browser Window
    ${title}=   Get Title
    Log  ${title}
    Close Browser
