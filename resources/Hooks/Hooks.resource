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
