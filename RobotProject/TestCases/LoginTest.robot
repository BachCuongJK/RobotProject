*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResources.robot
Library  DataDriver     ../Resources/LoginData.csv


Suite Setup     Open My Web
Suite Teardown  Close Browser
Test Template  Login

*** Test Cases ***
Test Login      using       ${username}     ${pwd}

*** Keywords ***
Login
    [Arguments]         ${username}     ${pwd}
    Enter username         ${username}
    Enter pwd              ${pwd}
    Click login button
    Login Succesfully
