*** Settings ***
Documentation      This suite file handles test cases related to valid login
...     which is connect with requirement 5.3
...     Test template concepts with excel
Resource    ../Resource/Base/common_functionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource
Resource    ../Resource/Pages/AboutPage.resource

Test Setup      Launch Browser
Test Teardown       End Browser

*** Test Cases ***
Verify About Version Test
    Enter Username    admin
    Enter Password    pass
    Select Language By Label    English (Indian)
    Click Login
    Mouse Over On Username
    Click On About OpenEMR
    Validate Version Number      6.1.0
