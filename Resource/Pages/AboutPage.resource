*** Settings ***
Documentation       This file handles all elements present in the main page
...     elements in menu

Resource       ../Base/common_functionality.resource

*** Variables ***
${ABOUTFRAME_LOCATOR}     name=About
${VERSIONNUMBER_LOCATOR}     xpath=//*[contains(text(),'Version Number')]/following::strong


*** Keywords ***
Validate Version Number
    [Arguments]     ${expected_version}
    Select Frame    ${ABOUTFRAME_LOCATOR}
    Element Should Contain    ${VERSIONNUMBER_LOCATOR}    ${expected_version}
    Unselect Frame