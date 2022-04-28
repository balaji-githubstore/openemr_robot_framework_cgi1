*** Settings ***
Documentation      This file will contains browser configuration, setup details,
...     for the openemr automation

Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}      http://demo.openemr.io/b/openemr

*** Keywords ***
Launch Browser
    IF  '${BROWSER}' == 'ff'
         Open Browser    browser=ff      executable_path=${EXECDIR}${/}driver${/}geckodriver.exe
    ELSE IF     '${BROWSER}' == 'edge'
         Open Browser    browser=edge      executable_path=${EXECDIR}${/}driver${/}msedgedriver.exe
    ELSE
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    END

    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=http://demo.openemr.io/b/openemr

End Browser With Screenshot
    Capture Page Screenshot
    Close Browser

End Browser
    Close Browser