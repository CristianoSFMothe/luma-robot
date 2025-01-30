*** Settings ***

Resource         ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Open Product
    [Documentation]
    [Tags]    ProductDetailsPage

    Inspect Product                     Radiant Tee   
    Details of the inspected product    Radiant Tee    $22.00 
    Select Size                         M  
    Select Color                        Purple
    Click Menu Details                  • Salmon soft scoop neck tee.
    Click Menu More Information         Style    Tee
    Click Menu Reviews                  Customer Reviews

    Sleep    5s



    