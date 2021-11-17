*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Utility.robot
Test Setup    Start Application
Test Teardown  Close Application

*** Test Cases ***
VerifyTitle
    ${title}    get title
    ${url}      get location
    log to console    ${title}
    should contain    ${title}  HRM
    should contain    ${url}    demo
    Login To Application    admin   admin123
    location should contain    dashboard
    click element    xpath://b[text()='PIM']
    click element    xpath://input[contains(@name,'Add')]
    checkbox should not be selected    id:chkLogin
    sleep    2s
    click element    id:chkLogin
    sleep    2s
    checkbox should be selected    id:chkLogin


*** keywords ***
Login To Application
     [Arguments]    ${username}      ${password}
     input text    id:txtUsername    ${username}
     input text    id:txtPassword    ${password}
     click button    id:btnLogin
