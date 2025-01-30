*** Settings ***
Documentation       Main screen keyword file

Resource    ../Base.resource

*** Keywords ***
Open Home Page
    [Arguments]        ${title}

    Wait For Elements State    css=span >> text=${title}    visible    timeout=10s

*** Keywords ***
Inspect Product
    [Arguments]    ${product}

    ${product_detail}    Set Variable    css=.product-item-details >> text=${product}
    Wait For Elements State    ${product_detail}    visible    timeout=10s  
    Scroll To Element          ${product_detail}
    Click                      ${product_detail}
    

    

    


