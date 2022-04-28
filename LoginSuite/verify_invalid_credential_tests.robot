*** Settings ***
Documentation      This suite file handles test cases related to invalid login
...     which is connect with requirement 5.3
...     Test template concepts
Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Invalid Credential Template

*** Test Cases ***
TC1     admin123       pass        English (Indian)            Invalid username or password
#TC2    jack12       pass        English (Indian)            Invalid username or password

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Run Keyword And Ignore Error    Click Element    xpath=//*[contains(text(),'Thanks')]
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass     ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']       ${language}
    Click Element    css=[type=submit]
    Element Text Should Be    xpath=//div[contains(text(),'Invalid')]     ${expected_error}
