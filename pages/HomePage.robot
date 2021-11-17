*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login To Application
    [Arguments]    ${uname}     ${pass}
    input text    id:txtUsername    ${uname}
    input text    id:txtPassword    ${pass}
    click button    id:btnLogin

Verify URL
    [Arguments]    ${expectedURL}
    ${actualURL}    get location
    should contain  ${actualURL}    ${expectedURL}