*** Settings ***
Documentation

Resource    ../Base.resource

*** Keywords ***
Account Information
    [Arguments]    ${name_account}    ${email_account}

    ${account_info}    Set Variable    css=.box-content > p

    Wait For Elements State    ${account_info}    visible    timeout=5s

    Get Text    ${account_info}    contains    ${name_account}

    Get Text    ${account_info}    contains    ${email_account}
