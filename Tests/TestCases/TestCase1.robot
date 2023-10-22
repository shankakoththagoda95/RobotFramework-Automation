*** Settings ***
Library     Browser
Library     FakerLibrary
Library     SeleniumLibrary
Resource  ./Resources/Data/Variables.robot
Resource  ./Resources/Data/Selectors.robot
Resource  ./Resources/Data/Credentials.robot

*** Test Cases ***
TestCase1
    Get to login page
    Sign in with user credentials
    Add Item to the cart
    Check Itemt added to the cart
    Remove the added Item
    Check Itemt removed from the cart
    Log    TestCase 1 Passed Successfully
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
    Click Element   ${ADDTOCART_1} 
    Sleep    1s   
    
Check Itemt added to the cart
    ${cart_badge_text}=  Get Text   ${SHOPPING_CART_VALUE}    
    Should Be Equal As Strings  ${cart_badge_text}  1  

Remove the added Item 
    Click Element   ${ADDREMOVETOCART_1} 
    Sleep    1s    

Check Itemt removed from the cart
    ${element_present}=  Element Should Not Be Visible  SHOPPING_CART_VALUE

