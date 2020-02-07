*** settings ***
Library    SeleniumLibrary
*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    #page should not contain VIDEOS11
    #click element  xpath://a[text()='Login']
    page should contain  VIDEOS
    click element  xpath://a[text()='Login']
    #page should contain textfield   xpath://input[@name='username']
    #input text  name:username   TestingWorldindia@gmail.com
    select checkbox  name:remember
    checkbox should be selected  name:remember
    click element  name:remember
    checkbox should not be selected  name:remember

