*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Utility.robot
Test Setup    Start Application
Test Teardown  Close Application

*** Variables ***
${username}     admin
${password}     admin123
${invalidPassword}      admin1234
${msgElement}       xpath://span[@id='spanMessage']


*** Test Cases ***
LoginWithValidCredential
    [Tags]    Positive
    Login To Application    ${username}   ${password}
    location should contain    dashboard

LoginWithInValidCredential
    [Tags]    Negative
    Login To Application    ${username}   ${invalidPassword}
    ${errorMessage}    get text    ${msgElement}
    log to console    Error Message is ${errorMessage}
    should be equal    ${errorMessage}      Invalid credentials


LoginWithOutPassword
    [Tags]    Negative
    Login To Application    ${username}   ${EMPTY}
    ${errorMessage}    get text    ${msgElement}
    log to console    Error Message is ${errorMessage}
    should be equal    ${errorMessage}      Password cannot be empty

LoginWithOutUserName
    [Tags]    Negative
    Login To Application    ${EMPTY}   ${password}
    ${errorMessage}    get text    ${msgElement}
    log to console    Error Message is ${errorMessage}
    should be equal    ${errorMessage}      Username cannot be empty

*** keywords ***
Login To Application
     [Arguments]    ${username}      ${password}
     input text    id:txtUsername    ${username}
     input text    id:txtPassword    ${password}
     click button    id:btnLogin
     #select from list by label