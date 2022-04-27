*** Settings ***
Documentation      This file will contains browser configuration, setup details,
...     for the openemr automation

Library     SeleniumLibrary

*** Keywords ***
Launch Browser
    Open Browser    browser=chrome      executable_path=D:${/}Software${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr

End Browser
    Capture Page Screenshot
    Close Browser