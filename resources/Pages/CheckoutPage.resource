*** Settings ***
Documentation       Checkout page keyword archive

Resource    ../Base.resource
Library    XML

*** Keywords ***
Open Cart Page
    [Arguments]        ${name_product}    ${title_page}

    ${message}    Set Variable    css=.product-item-name >> text=${name_product}
    ${link_shopping_cart}    Set Variable    xpath=//a[.='shopping cart'] 

    Wait For Elements State    ${link_shopping_cart}
    Click                      ${link_shopping_cart}  

    Wait For Elements State    ${message}
    Get Text                   ${message}    
    Check the Page Title       ${title_page}
