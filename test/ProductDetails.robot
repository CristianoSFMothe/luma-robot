*** Settings ***

Resource         ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Open Product
    [Documentation]    test suite to inspect the details of a product
    [Tags]             ProductDetailsPage

    Inspect Product                     Radiant Tee   
    Details of the inspected product    Radiant Tee    $22.00 
    Select Size                         M  
    Select Color                        Purple
    Click Menu Details                  • Salmon soft scoop neck tee.
    Click Menu More Information         Style    Tee
    Click Menu Reviews                  Customer Reviews

Add Product to shopping cart
    [Documentation]    test suite to add product to shopping cart
    [Tags]             AddProductCard

    Inspect Product                     Radiant Tee   
    Details of the inspected product    Radiant Tee    $22.00 
    Select Size                         M  
    Select Color                        Purple
    Select Quantity                     3
    Click Button Add To Cart
    Successfully added message          You added Radiant Tee to your 


    Sleep    5s



    