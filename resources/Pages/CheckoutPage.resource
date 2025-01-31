*** Settings ***
Documentation       Checkout page keyword archive

Resource    ../Base.resource

*** Keywords ***
Open Cart Page
    [Arguments]        ${name_product}    ${title_page}

    ${message}    Set Variable    css=.product-item-name >> text=${name_product}
    ${link_shopping_cart}    Set Variable    xpath=//a[.='shopping cart'] 

    Wait For Elements State    ${link_shopping_cart}    visible    timeout=5s
    Click                      ${link_shopping_cart}  

    Wait For Elements State    ${message}    visible    timeout=5s
    Get Text                   ${message}    
    Check the Page Title       ${title_page}
