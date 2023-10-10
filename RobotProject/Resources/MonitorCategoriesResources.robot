*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py
Variables  ../PageObject/MonitorFunction.py

*** Keywords ***
Open My Browser
    open browser    https://www.demoblaze.com/index.html    chrome
    maximize browser window
    set selenium implicit wait      20
    sleep   3

Click Monitors Categories
    click element   ${monitorsCategories}
    sleep   1

Click A Monitor
    click element   ${secondMonitor}

Click Add To Cart
    click element   ${addToCart}

Verify Name Is Displayed
    Wait Until Element Is Visible   ${monitorPrice}
    element should be visible   ${monitorPrice}

Verify Price Is Displayed
    Wait Until Element Is Visible    ${monitorName}
    element should be visible       ${monitorName}

Verify Img Is Displayed
    Wait Until Element Is Visible   ${monitorImg}
    element should be visible       ${monitorImg}

Verify Description Is Displayed
    Wait Until Element Is Visible   ${monitorDescription}
    element should be visible       ${monitorDescription}

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