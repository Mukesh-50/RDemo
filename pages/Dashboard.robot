*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Logout From Application
    click element    xpath://a[@id="welcome"]
    wait until element is visible    xpath://a[text()='Logout']
    click element    xpath://a[text()='Logout']