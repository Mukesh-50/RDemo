*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
DemoTest
    open browser    http://www.facebook.com   Chrome    remote_url=https://Mukesh_903:9d0b69a7-61e3-4585-9e0b-72b62c437fa0@ondemand.apac-southeast-1.saucelabs.com:443/wd/hub     desired_capabilities=name:DemoTest,build:build123,platformName:Windows 8.1,browserName:firefox,browserVersion:93
    ${title}    get title
    log to console    ${title}
    close browser