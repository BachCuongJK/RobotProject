*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PhoneCategoriesResources.robot
Test Setup      Open My Browser
Test Teardown   Close Browser


*** Test Cases ***
Test Click One Phone
    Click Phones Categories
    Click A phone
    Verify Name Is Displayed
    Verify Price Is Displayed
    Verify Img Is Displayed
    Verify Description Is Displayed
    Verify Add To Cart Is Displayed

Add One Phone Successfully
    Click Phones Categories
    Click A phone
    Click Add To Cart
    Add Successfully

Verify Phone Added To Cart Successfully
    Click Phones Categories
    Click A phone
    Click Add To Cart
    Add Successfully
    Click Cart
    Get Items Details