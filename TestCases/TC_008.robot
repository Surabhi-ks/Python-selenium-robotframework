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
    Input text    name:fld_username    test
    Input Text    name:fld_email    testing
    #capture page screenshot  C:/Users/sks/PycharmProjects/sampleautomation1/TC_008.png
    Open Browser    ${URL2}  ${Browser}
    close all browsers