*** Settings ***
Documentation        Keyword file from the register page

Resource    ../Base.resource

*** Keywords ***
Click Menu Register Account

    ${button_create_account}    Set Variable    
    ...    css=.header.panel > .header >> text=Create an Account

    Wait For Elements State    ${button_create_account}
    Click                      ${button_create_account}    

Fill Credentials a New Account
    [Arguments]    ${first_name}    ${last_name}    
    ...            ${email}    ${password}      
    ...            ${password_confirmation}    ${expected_text}
        
    Wait For Elements State    ${INPUT_FIRST_NAME}
    Fill Text                  ${INPUT_FIRST_NAME}               ${first_name}

    Wait For Elements State    ${INPUT_LAST_NAME}
    Fill Text                  ${INPUT_LAST_NAME}                ${last_name}

    Wait For Elements State    ${INPUT_EMAIL}
    Fill Text                  ${INPUT_EMAIL}                    ${input_email}

    Wait For Elements State    ${INPUT_PASSWORD}
    Fill Text                  ${INPUT_PASSWORD}                 ${password}

    Wait For Elements State    ${INPUT_PASSWORD_CONFIRMATION}
    Fill Text                  ${INPUT_PASSWORD_CONFIRMATION}    ${password_confirmation}

    Click                      ${BUTTON_CREATE_AN_ACCOUNT}   

    ${message}    Set Variable    css=div >> text=${expected_text}

    Wait For Elements State    ${message}
    Get Text                   ${message} 

    

