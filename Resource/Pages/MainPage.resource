*** Settings ***
Documentation       This file handles all elements present in the main page
...     elements in menu

Resource       ../Base/common_functionality.resource

*** Variables ***
${CALENDAR_LOCATOR}     xpath=//div[text()='Calendar']
${FINDER_LOCATOR}     xpath=//div[text()='Finder']
${MESSAGES_LOCATOR}     xpath=//div[text()='Messages']
${USERNAME_LOCATOR}     id=username
${ABOUTOPENEMR_LOCATOR}     xpath=//li[contains(text(),'About OpenEMR')]

*** Keywords ***
Click Calendar
    Click Element    ${CALENDAR_LOCATOR}

Click Finder
    Click Element    ${FINDER_LOCATOR}

Click Messages
    Click Element    ${MESSAGES_LOCATOR}

MainPage Title Should Be
    [Arguments]       ${expected_title}
    Title Should Be    ${expected_title}

Mouse Over On Username
    Mouse Over    ${USERNAME_LOCATOR}

Click On About OpenEMR
    Click Element    ${ABOUTOPENEMR_LOCATOR}