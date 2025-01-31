*** Settings ***
Documentation        Login page keyword archive

Resource    ../Base.resource

*** Keywords ***
Fill Credentials Login
    [Arguments]       ${email_account}    ${password_account}

    Click        xpath=//div[@class='panel header']//a[contains(.,'Sign In')]

    Fill Text    ${EMAIL}       ${email_account}
    Fill Text    ${PASSWORD}    ${password_account}
    Click        ${BUTTON_SIGN_IN}