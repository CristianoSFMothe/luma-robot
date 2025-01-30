*** Settings ***

Resource    ../../resources/Config/Libs.resource

*** Variables ***
${BASE_URL}        https://magento.softwaretestingboard.com/
${BROWSER}         chromium
${IS_HEADLESS}     False

*** Keywords ***
Start Browser

    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${BASE_URL}  

Finish Browser
    Take Screenshot        fullPage=true     

Check the Page Title
    [Arguments]        ${title_page}
    
    ${title}           Get Title
    Should Be Equal    ${title}    ${title_page}
    
Get JSON

    [Arguments]    ${json_path}

    ${json}    Load Json From File    
    ...        ${EXECDIR}/resources/JSON/${json_path}.json
    ...        encoding=UTF-8
    
    Return From Keyword    ${json}

Account Information
    [Arguments]    ${name_account}    ${email_account}

    ${account_info}    Set Variable    css=.box-content > p

    Wait For Elements State    ${account_info}    visible    timeout=5s
    Get Text    ${account_info}    contains    ${name_account}
    Get Text    ${account_info}    contains    ${email_account}