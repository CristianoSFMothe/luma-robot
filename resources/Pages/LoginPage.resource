*** Settings ***
Documentation        Login page keyword archive

Resource    ../Base.resource

*** Keywords ***
Fill Credentials Login
    [Arguments]       ${input_email}    ${input_password}

    # ${element}    Set Variable    css.note >> text=${message}

    # Wait For Elements State    ${message}
    # Get Text                   ${message}

    Click        xpath=//div[@class='panel header']//a[contains(.,'Sign In')]

    Fill Text    ${EMAIL}       ${input_email}
    Fill Text    ${PASSWORD}    ${input_password}
    Click        ${BUTTON_SIGN_IN}