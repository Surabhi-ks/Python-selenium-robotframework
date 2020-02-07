*** settings ***
Library    SeleniumLibrary



*** variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings
${URL2}    http://www.facebook.com
*** test cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    #go to   ${URL2}
    #execute javascript  window.scrollTo(0,1000)   #It will just scroll the scroller to 1000px location vertically.
    sleep  2
    execute javascript  window.scrollTo(0,1000)
    #open context menu  xpath://i[@class='fa fa-map fa-2x']  #To right click on the element mentioned
    double click element  xpath://input[@type='submit']
    mouse down  xpath://a[text()='Read Detail']   #Together mouse down, mouse up is just a click
    mouse up  xpath://a[text()='Read Detail']
    sleep  2
    ${URL1}=    get location
    log to console  ${URL1}
    #go back
    sleep  2
    ${URL1}=    get location
    log to console  ${URL1}