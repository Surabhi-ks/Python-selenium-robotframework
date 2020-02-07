*** settings ***
Library    SeleniumLibrary
*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com
${URL1}    http://www.thetestingworld.com/testings
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    Open Browser    ${URL1}    ${Browser}
    Maximize Browser Window
    #element text should be  xpath://div[@id='tab-content1']/p  Register now and kick start your career as a Software Testing Pro!
    #input text  name:fld_username  helloworld
    #element text should be  xpath://div[@id='tab-content1']/p  Register now and kick start your career as a Software Testing Pro!
    #input text  name:fld_username  helloworld
    title should be   Login & Sign Up Forms
    element should be enabled  name:fld_username
    #element should be disabled  name:fld_username
    #element should not be visible  name:fld_username
    element should be visible  name:fld_username
