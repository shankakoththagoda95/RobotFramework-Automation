*** Settings ***
Library     Browser
Library     FakerLibrary
Library     SeleniumLibrary
Resource    ./Resources/Data/Variables.robot
Resource    ./Resources/Data/Selectors.robot
Resource    ./Resources/Data/Credentials.robot

*** Test Cases ***
TestCase2
    Get to login page
    Sign in with user credentials
    Add Item to the cart
    Check Added Items in Shopping cart
    Checkout Process
    Log    TestCase 2 Passed Successfully
    Close Browser

*** Keywords ***
Get to login page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Sign in with user credentials
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=10s
    Input Text      ${USERNAME_FIELD}    ${USERNAME}
    Input Text      ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Sleep    4s

Add Item to the cart
    Click Element   ${ADDTOCART_2} 
    Sleep    1s
    Click Element   ${ADDTOCART_4} 
    Sleep    1s

Check Added Items in Shopping cart
    Click Element   ${SHOPPING_CART} 
    Sleep    2s
    ${Bike_Light_Label}=  Get Text   ${SHOPPING_CART_BIKE_LIGHT_TITLE}    
    Should Be Equal As Strings  ${Bike_Light_Label}  Sauce Labs Bike Light
    ${Fleece_Jacket_Label}=  Get Text   ${SHOPPING_CART_FLEECE_JACKET_TITLE}    
    Should Be Equal As Strings  ${Fleece_Jacket_Label}  Sauce Labs Fleece Jacket
    Sleep    2s

Checkout Process
    Click Element   ${CHECKOUT_BUTTON}   
    Sleep    2s
    Input Text      ${CHECKOUT_FIRSTNAME}  ${FIRSTNAME}
    Input Text      ${CHECKOUT_LASTNAME}   ${LASTNAME}
    Input Text      ${CHECKOUT_ZIPCODE}    ${POSTALCODE}
    Click Element   ${CHECKOUT_CONTINUE}
    Sleep    2s
    ${Bike_Light_Quantity}=  Get Text   ${SHOPPING_CART_BIKE_LIGHT_QUANTITY}    
    Should Be Equal As Strings  ${Bike_Light_Quantity}  1
    ${Fleece_Jacket_Quantity}=  Get Text   ${SHOPPING_CART_FLEECE_JACKET_QUANTITY}    
    Should Be Equal As Strings  ${Fleece_Jacket_Quantity}  1
    ${Checkout_Total}=  Get Text   ${CHECKOUT_TOTAL_VALUE}    
    Should Be Equal As Strings  ${Checkout_Total}  Total: $64.78
    Sleep    2s
    Click Element   ${CHECKOUT_FINISH_BUTTON}
    Sleep    2s
    ${Thank_you_message}=  Get Text   ${CHECKOUT_THANK_YOU_LABEL}   
    Should Be Equal As Strings  ${Thank_you_message}  Thank you for your order!
    Sleep    2s