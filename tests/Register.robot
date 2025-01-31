*** Settings ***

Resource         ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Create a New Account 
    [Documentation]        test suite create a new account
    [Tags]                 registerSuccessful    
    
    Click Menu Register Account
    Check the Page Title            Create New Customer Account
    
    ${first_name}    FakerLibrary.First Name
    ${last_name}     FakerLibrary.Last Name
    ${email}         FakerLibrary.Email
    ${password}      FakerLibrary.Password    length=12    special_chars=True
    ${password_confirmation}    Set Variable    ${password}

    Fill Credentials    ${first_name}    ${last_name}    
    ...                 ${email}    ${password}    
    ...                 ${password_confirmation}
    ...    Thank you for registering with Main Website Store.
    
    Check the Page Title    My Account