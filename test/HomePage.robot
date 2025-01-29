*** Settings ***

Resource    ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Scenario 01: Home Page
    [Documentation]
    [Tags]    HomePage

    Open Home Page     Home Page
    Inspect Product    Radiant Tee    
    Sleep    2s

    