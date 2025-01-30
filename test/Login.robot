*** Settings ***
Documentation        suite test login page

Resource         ../resources/Base.resource
Resource    ../resources/Pages/LoginPage.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Login Successfully

    ${user}    Get JSON    account

    Check the Page Title      Home Page
    
    Fill Credentials Login  
    ...    ${user}[account][email]    
    ...    ${user}[account][password]
    
    