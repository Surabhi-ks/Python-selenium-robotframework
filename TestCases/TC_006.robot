*** settings ***
Library    SeleniumLibrary
Library     Collections



*** variables ***

*** test cases ***
Robot First Test Case
    ${var1}=    set variable    HelloWorld
    run keyword if  '${var1}'=='HelloWorld'  log to console  Value is hello world
    run keyword if  '${var1}'=='Hello'  log to console  Value is hello
    ${var2}=    set variable    log to console
    run keyword  ${var2}  testingworld
    log to console    ${var1}
    @{list1}    create list   Hello   23  23.4    Abcd123
    : FOR  ${i}    IN RANGE   1   10
    \   log to console  ${i}

    : FOR  ${i}    IN   @{list1}
    \   log to console  ${i}