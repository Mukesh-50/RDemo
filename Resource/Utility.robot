*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#&{url}           stag=http://staging.com     prod=http://prod.com    qa=http://qa.com
${url}          https://opensource-demo.orangehrmlive.com
@{browser}      chrome    firefox     edge
${remoteURL}    http://localhost:4444/wd/hub
${browserName}  Chrome



*** Keywords ***
Start Application
     #open browser     ${url}    ${browser}[0]   remote_url=https://Mukesh_903:9d0b69a7-61e3-4585-9e0b-72b62c437fa0@ondemand.apac-southeast-1.saucelabs.com:443/wd/hub   desired_capabilities=browserName:firefox,browserVersion:94,platformName:Windows 8.1
     #open browser     ${url}    ${browser}[0]   remote_url=${remoteURL}   desired_capabilities=browserName:${browserName}
     open browser    ${url}     ${browser}[0]
     maximize browser window

Close Application
    close browser
