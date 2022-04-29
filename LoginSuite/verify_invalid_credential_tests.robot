*** Settings ***
Documentation      This suite file handles test cases related to invalid login
...     which is connect with requirement 5.3
...     Test template concepts
Resource    ../Resource/Base/common_functionality.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Invalid Credential Template

*** Test Cases ***
TC1     admin123       pass        English (Indian)            Invalid username or password
#TC2    jack12       pass        English (Indian)            Invalid username or password

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Run Keyword And Ignore Error    Click No Thanks
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Invalid Error Message      expected_error=${expected_error}
