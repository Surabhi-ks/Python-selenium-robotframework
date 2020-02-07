*** settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userkeywords.py
Library    ../TestCases/read_from_excel_robot.py
*** variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** keywords ***
#without arguments
#Start Browser and Maximize
    #Open Browser    ${URL}    ${Browser}
    #Maximize browser Window

#With arguments
#Start Browser and Maximize
    #[Arguments]  ${userURL}  ${inputBrowser}
    #Open Browser    ${userURL}    ${inputBrowser}
    #Maximize browser Window

#With arguments and return value
#Start Browser and Maximize
    [Documentation]  This testcase deals with different argument types and return
    [Arguments]  ${userURL}  ${inputBrowser}
    Open Browser    ${userURL}    ${inputBrowser}
    Maximize browser Window
    ${title}=  Get Title
    #log to console  ${title}
    Log  ${title}
    [Return]  ${title}

Create Folder From Python Function
    [Arguments]  ${foldername}  ${subfoldername}
    #create_folder
    #create_sub_folder
    create_folder_with_name  ${foldername}
    create_subfolder_with_name  ${subfoldername}

Concatenate Username And Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}

Read Number Of Rows
    [Arguments]  ${sheetname}
    ${maxrows}=  fetch_number_of_rows  ${sheetname}
    [return]  ${maxrows}

Read Excel Data Of Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${cellvalue}=  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [return]  ${cellvalue}

