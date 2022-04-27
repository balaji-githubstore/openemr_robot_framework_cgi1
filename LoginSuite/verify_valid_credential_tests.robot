*** Settings ***
Documentation      This suite file handles test cases related to valid login
...     which is connect with requirement 5.3

Library     SeleniumLibrary

*** Test Cases ***
Verify Valid Credential Test
    Open Browser    browser=chrome      executable_path=D:${/}Software${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']       English (Indian)
    Click Element    css=[type=submit]
    Title Should Be    OpenEMR