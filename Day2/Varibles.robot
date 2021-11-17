*** Variables ***
${name}     Robot Framework
@{lib}      Selenium    XML     OS      Dialogs
&{details}  name=Arpit      address=Pune    phone=909090


*** Test Cases ***
TC1
    log to console    ${name}
    log to console    ${lib}[0]
    log to console    ${lib}[1]
    log to console    ${lib}[2]
    log to console    ${lib}[3]
    #log to console    ${lib}[4]
    log to console    ${details}[name]
    log to console    ${details}[address]
    log to console    ${details}[phone]
    log to console    ${details}[Robot]