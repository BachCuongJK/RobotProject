*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py

*** Variables ***
${Browser}  Chrome
${SiteUrl}  https://www.demoblaze.com/index.html

*** Keywords ***
Open My Web
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window
    set selenium Implicit Wait    20
    click element   ${login}

Enter username
    [Arguments]     ${input_username}
    input text      ${username}         ${input_username}

Enter pwd
    [Arguments]     ${input_pwd}
    input text      ${pwd}       ${input_pwd}

Click login button
    click element       ${loginButton}

Login Succesfully
    page should contain    Welcome

Close Browser
    close all browsers