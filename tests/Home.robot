*** Settings ***

Resource    ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Home Page
    [Documentation]       test suite home page
    [Tags]                HomePage

    Open Home Page                      Home Page

    