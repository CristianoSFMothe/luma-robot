*** Settings ***
Documentation       Checkout page keyword archive

Resource    ../Base.resource

*** Keywords ***
Inspect The Shopping Cart
    [Arguments]        ${name_product}
    
    Wait For Elements State    css=.product-item-name >> text=${name_product}
