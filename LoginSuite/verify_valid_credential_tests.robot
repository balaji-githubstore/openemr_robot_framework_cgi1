*** Settings ***
Documentation      This suite file handles test cases related to valid login
...     which is connect with requirement 5.3

Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Valid Credential Template

*** Test Cases ***
TC1     admin       pass        English (Indian)        OpenEMR
TC2     accountant       accountant        English (Indian)        OpenEMR

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']       ${language}
    Click Element    css=[type=submit]
    Title Should Be    ${expected_title}