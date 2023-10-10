*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/MonitorCategoriesResources.robot
Test Setup  Open My Browser
Test Teardown  Close Browser

*** Test Cases ***
Add One Monitor Test
    Click Monitors Categories
    Click A Monitor
    Verify Name Is Displayed
    Verify Price Is Displayed
    Verify Img Is Displayed
    Verify Description Is Displayed
    Verify Add To Cart Is Displayed

Add A Monitor Successfully
    Click Monitors Categories
    Click A Monitor
    Click Add To Cart
    Verify Add Successfully

Verify Monitor Added To Cart Successfully
    Click Monitors Categories
    Click A Monitor
    Click Add To Cart
    Verify Add Successfully
    Click Cart
    Get Items Details