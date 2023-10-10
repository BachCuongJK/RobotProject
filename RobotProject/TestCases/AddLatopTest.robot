*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LaptopCategoriesResources.robot
Test Setup      Open My Browser
Test Teardown   Close Browser

*** Test Cases ***
Test Click One Latop
    Click Laptop Categories
    Click A Laptop
    Verify Name Is Displayed
    Verify Price Is Displayed
    Verify Img Is Displayed
    Verify Description Is Displayed
    Verify Add To Cart Is Displayed

Add Laptop Successfully
    Click Laptop Categories
    Click A Laptop
    Click Add To Cart
    Verify Add Successfully

Verify Laptop Added To Cart Successfully
    Click Laptop Categories
    Click A Laptop
    Click Add To Cart
    Verify Add Successfully
    Click Cart
    Get Items Details