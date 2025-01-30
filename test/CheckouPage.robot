*** Settings ***
Documentation        Suite tests Checkout Page

Resource    ../resources/Base.resource


Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Open Cart Page

    Check the Page Title            Shopping Cart
    Inspect The Shopping Cart       Radiant Tee
    
