*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/HomePage.robot
Resource    ../pages/Admin.robot
Resource    ../pages/Dashboard.robot
Resource    ../Resource/Utility.robot
Suite Setup    Start Application
Suite Teardown  Close Application

*** Variables ***
${adminUname}       admin
${adminPass}        admin123
${newUserUname}     Mukesh_1001
${newPassword}      Abcd@1234

*** Test Cases ***
Login
    HomePage.Login To Application    ${adminUname}      ${adminPass}
    HomePage.Verify URL    dashboard

Search User For Application
    Admin.Search User    ${newUserUname}
    page should not contain   ${newUserUname}

Create New User For Application
    Admin.Create User    ${newUserUname}    ${newPassword}
    page should contain    ${newUserUname}

Logout From Application
    Dashboard.Logout From Application

Login With New User
    HomePage.Login To Application    ${newUserUname}    ${newPassword}
    HomePage.Verify URL    dashboard
    Dashboard.Logout From Application
    location should contain    login