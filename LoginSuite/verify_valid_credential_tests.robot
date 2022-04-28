*** Settings ***
Documentation      This suite file handles test cases related to valid login
...     which is connect with requirement 5.3
...     Test template concepts with excel
Resource    ../Resource/Base/common_functionality.resource

Library     DataDriver      file=../test_data/open_emr_data.xlsx    sheet_name=verifyvalidcredential

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Valid Credential Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']       ${language}
    Click Element    css=[type=submit]
    Title Should Be    ${expected_title}