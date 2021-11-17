*** Settings ***
Library    Dialogs

*** Test Cases ***
DialogLibDemo
    log to console  Hello
    #execute manual step    Please complete test
    log to console    Robot
    #pause execution    Validate DB
   ${browser}  get selection from user    Browser  Chrome  Firefox   Edge
   log to console    Browser Selection is ${browser}

    ${browser1}  get selections from user  Browser  Chrome  Firefox   Edge
    log to console    Browser Selection is ${browser1}
    log to console    Browser Selection is ${browser1}[0]
    log to console    Browser Selection is ${browser1}[1]
    log to console    Browser Selection is ${browser1}[2]

    ${uname}    get value from user    Input Username   default
    ${pass}     get value from user    Input Password   hidden=yes

    log to console    ${uname}
    log to console    ${pass}