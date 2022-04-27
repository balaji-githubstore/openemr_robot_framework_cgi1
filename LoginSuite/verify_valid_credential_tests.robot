*** Settings ***
Documentation      This suite file handles test cases related to valid login
...     which is connect with requirement 5.3

Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown       End Browser

*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']       English (Indian)
    Click Element    css=[type=submit]
    Title Should Be    OpenEMR
