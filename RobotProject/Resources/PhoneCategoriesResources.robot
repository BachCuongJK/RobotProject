*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py
Variables  ../PageObject/PhoneFunction.py

*** Keywords ***
Open My Browser
    open browser    https://www.demoblaze.com/index.html    chrome
    maximize browser window
    set selenium implicit wait      20
    sleep   3

Click Phones Categories
    click element   ${phonesCategories}

Click A phone
    click element   ${secondItems}

Verify Name Is Displayed
    Wait Until Element Is Visible   ${mobilePrice}
    element should be visible   ${mobilePrice}

Verify Price Is Displayed
    Wait Until Element Is Visible    ${mobileName}
    element should be visible       ${mobileName}

Verify Img Is Displayed
    Wait Until Element Is Visible   ${phoneImg}
    element should be visible       ${phoneImg}

Verify Description Is Displayed
    Wait Until Element Is Visible   ${phoneDescription}
    element should be visible       ${phoneDescription}

Verify Add To Cart Is Displayed
    Wait Until Element Is Visible   ${addToCart}
    element should be visible       ${addToCart}

Click Add To Cart
    Wait Until Element Is Visible   ${addToCart}
    click element     ${addToCart}

Add Successfully
    alert should be present     Product added

Click Cart
    Wait Until Element Is Visible   ${cart}
    click element                   ${cart}

Get Items Details
    Sleep       1
    ${Items}        Get WebElements     ${cells}
    FOR     ${Item}         IN      @{Items}
        ${text}=    Get Text        ${Item}
        Log to console  ${text}
    END

Close Browser
    close all browsers