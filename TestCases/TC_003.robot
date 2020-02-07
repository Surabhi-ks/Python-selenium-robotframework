*** settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings
${URL2}    http://www.facebook.com
*** test cases ***
Robot First Test Case
    #Create Folder From Python Function  Hello1234  Testing
    Concatenate Username And Password  surabhi  root1234
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    #Set Selenium Speed    2seconds
    ${cnt}=  Get Element Count  class:field
    Log  ${cnt}
    ${attr}=  Get Element Attribute  name:fld_username  class
    Log  ${attr}
    ${actualURL}=  Get Location
    Log  ${actualURL}
    ${gethtml}=  Get Source
    Log  ${gethtml}
    Select From List By Index    name:sex    2
    ${val}=  Get Selected List Value  name:sex
    Log  ${val}
    ${val}=  Get Selected List Label  name:sex
    Log  ${val}
    ${val}=  Get List Items  name:sex
    Log  ${val}
    #Select From List By Value    name:sex    1
    #Select From List By Label    name:sex    Female
    Close Browser