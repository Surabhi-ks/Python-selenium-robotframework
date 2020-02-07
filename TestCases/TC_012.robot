*** settings ***
Library    SeleniumLibrary
*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com
${URL2}    http://www.facebook.com
${URL3}     https://robotframework.org/
*** test cases ***
Robot First Test Case
    Open Browser    ${URL3}    ${Browser}
    Maximize Browser Window
    click link  xpath://a[text()='GitHub']
    #select window   Robot Framework
    #${url1}=     get location
    #log to console      ${url1}
    #select window   GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA
    #${url2}=     get location
    #log to console      ${url2}
    @{list1}=    get window handles
    :FOR    ${var}  IN  @{list1}
    \   log to console  ${var}
    \   select window  ${var}
    \   ${url}=	get location
    \   log to console	${url}