*** Settings *** 
Documentation  Software Testing Review 
Library  SeleniumLibrary

*** Variables ***

${LOGIN_URL}  http://127.0.0.1:8000/users/recruiter_login/ 
${BROWSER}  Firefox


*** Test Cases *** 
Valid Login
    Open Browser To Login Page 
    Input Username  recruiter1
    Input Password  testpassword 
    Submit Credentials
    Home Page Should Be Open
    [Teardown]  Close Browser

Invalid Login
    Open Browser To Login Page 
    Input Username  recruiter10
    Input Password  testpassword 
    Submit Credentials
    Recruiter Login Page Should Be Open
    [Teardown]  Close Browser

*** Keywords ***
Open Browser To Login Page 
    Open Browser  ${LOGIN_URL}  ${BROWSER}

Input Username 
    [Arguments]  ${uname}
    Input Text  username  ${uname}

Input Password
    [Arguments]  ${pwd} 
    Input Text  password  ${pwd}

Submit Credentials 
    Click Button  btn

Home Page Should Be Open 
    Title Should be  Implicit Consulting Inc.

Recruiter Login Page Should Be Open
    Title Should be  Implicit Consulting Inc. - Recruiter Login