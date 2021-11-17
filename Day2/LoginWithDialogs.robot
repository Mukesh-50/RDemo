*** Settings ***
Library    SeleniumLibrary
Library    Dialogs

*** Test Cases ***
LoginWithUserInput
     ${browser}    get selection from user    Browser    Chrome  Firefox     Edge
     ${url}     get value from user    Enter URL   https://opensource-demo.orangehrmlive.com/
     ${username}    get value from user    Input UserName
     ${password}    get value from user    input password    hidden=yes
     open browser        ${url}         ${browser}
     maximize browser window
     input text    id:txtUsername    ${username}
     input text    id:txtPassword    ${password}
     click button    id:btnLogin
     pause execution
     choose file    xpath://input[@id='photofile']     C:\\Users\\l\\Desktop\\WDIO_13.PNG