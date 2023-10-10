*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py
Variables  ../PageObject/LaptopFuntcion.py

*** Keywords ***
Open My Browser
    open browser    https://www.demoblaze.com/index.html    chrome
    maximize browser window
    set selenium implicit wait      20
    sleep   3

Click Laptop Categories
    click element   ${laptopsCategories}
    sleep   1

Click A Laptop
    click element   ${fristLaptop}

Click Add To Cart
    click element   ${addToCart}

Verify Name Is Displayed
    Wait Until Element Is Visible   ${laptopPrice}
    element should be visible   ${laptopPrice}

Verify Price Is Displayed
    Wait Until Element Is Visible    ${laptopName}
    element should be visible       ${laptopName}

Verify Img Is Displayed
    Wait Until Element Is Visible   ${latopImg}
    element should be visible       ${latopImg}

Verify Description Is Displayed
    Wait Until Element Is Visible   ${laptopDescription}
    element should be visible       ${laptopDescription}

Verify Add To Cart Is Displayed
    Wait Until Element Is Visible   ${addToCart}
    element should be visible       ${addToCart}

Verify Add Successfully
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