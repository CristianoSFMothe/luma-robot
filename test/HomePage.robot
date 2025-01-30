*** Settings ***

Resource    ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Home Page
    [Documentation]
    [Tags]    HomePage

    Open Home Page                      Home Page

    