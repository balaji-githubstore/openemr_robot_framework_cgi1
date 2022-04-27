*** Settings ***
Documentation      This suite file handles test cases related to invalid login
...     which is connect with requirement 5.3

Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown       End Browser

*** Test Cases ***
Verify Invalid Credential Test
    Input Text    id=authUser    admin123
    Input Password    css=#clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']       English (Indian)
    Click Element    css=[type=submit]
    Element Text Should Be    xpath=//div[contains(text(),'Invalid')]    Invalid username or password