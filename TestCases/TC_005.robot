*** settings ***
Library    SeleniumLibrary
Library     Collections



*** variables ***

*** test cases ***
Robot First Test Case
    ${var1}=    set variable    HelloWorld
    log to console    ${var1}
    @{list1}    create list   Hello   23  23.4    Abcd123
    ${list_length}  get length  ${list1}
    log to console  ${list_length}
    ${list_data}=   get from list   ${list1}  3
    log to console  ${list_data}
