*** Settings ***
Documentation       This file handles all elements present in the login page

Resource       ../Base/common_functionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=authUser
${PASSWORD_LOCATOR}     id=clearPass
${LANGUAGE_LOCATOR}     xpath=//select[@name='languageChoice']
${LOGIN_LOCATOR}        css=[type=submit]
${ACKLICCERT_LOCATOR}       partial link=Certification
${NOTHANKS_LOCATOR}     xpath=//*[contains(text(),'Thanks')]
${ERROR_LOCATOR}        xpath=//div[contains(text(),'Invalid')]

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    [Documentation]     Types the given text into the text field of username
    ...     Examples: \n
    ...     | Enter Username | admin |
    ...     | Enter Username | accountant |
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password 
    [Arguments]     ${password}
    [Documentation]     Types the given text into the
    ...     password field \n
    ...     Examples: \n
    ...     | Enter Password | pass |
    ...     | Enter Password | accountant |
    Input Password    ${PASSWORD_LOCATOR}     ${password}

Select Language By Label 
    [Arguments]     ${language_label}
    [Documentation]     Select the language based on the label \n
    ...     Examples: \n
    ...     | Select Language By Label  | Dutch |
    Select From List By Label    ${LANGUAGE_LOCATOR}       ${language_label}

Click Login
    [Documentation]     Clicks on Login
    Click Element    ${LOGIN_LOCATOR}

Click On Acknowledgement Licensing Certification
    [Documentation]     Clicks on Acknowledgement Licensing Certification link
    Click Element    ${ACKLICCERT_LOCATOR}
    
Click No Thanks
    [Documentation]     Clicks on no thanks
    Click Element    ${NOTHANKS_LOCATOR}

Validate Invalid Error Message
    [Arguments]     ${expected_error}
    [Documentation]     Error message should be available \n
    ...     Examples: \n
    ...     | Validate Invalid Error Message | Invalid username or password |
    Element Text Should Be      ${ERROR_LOCATOR}    ${expected_error}