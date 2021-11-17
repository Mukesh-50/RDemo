*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search User
    [Arguments]    ${searchUser}
    wait until element is enabled    xpath://b[text()='Admin']      timeout=10
    click element    xpath://b[text()='Admin']
    input text     id:searchSystemUser_userName      ${searchUser}.
    click element    id:searchBtn

Create User
    [Arguments]    ${newUser}       ${newPass}
    click element    id:btnAdd
    select from list by label    name:systemUser[userType]      Admin
    input text    id:systemUser_employeeName_empName    John Smith
    input text    id:systemUser_userName       ${newUser}
    input text    id:systemUser_password       ${newPass}
    input text    id:systemUser_confirmPassword    ${newPass}
    sleep    2s
    click element    id:btnSave
    wait until element contains    xpath://div[@class='message success fadable']    Successfully    timeout=15