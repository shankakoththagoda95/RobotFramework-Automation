*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${USERNAME_FIELD}                           id=user-name
${PASSWORD_FIELD}                           id=password
${LOGIN_BUTTON}                             id=login-button
${ADDTOCART_1}                              id=add-to-cart-sauce-labs-backpack
${ADDTOCART_2}                              id=add-to-cart-sauce-labs-bike-light
${ADDTOCART_3}                              id=add-to-cart-sauce-labs-bolt-t-shirt
${ADDTOCART_4}                              id=add-to-cart-sauce-labs-fleece-jacket
${ADDTOCART_5}                              id=add-to-cart-sauce-labs-onesie
${ADDTOCART_6}                              id=add-to-cart-test.allthethings()-t-shirt-(red)
${ADDREMOVETOCART_1}                        id=remove-sauce-labs-backpack
${SHOPPING_CART}                            xpath=//*[@id="shopping_cart_container"]/a
${SHOPPING_CART_VALUE}                      xpath=//span[@class="shopping_cart_badge"]
${SHOPPING_CART_BIKE_LIGHT_TITLE}           xpath=//*[@id="item_0_title_link"]/div
${SHOPPING_CART_FLEECE_JACKET_TITLE}        xpath=//*[@id="item_5_title_link"]/div
${SHOPPING_CART_BIKE_LIGHT_QUANTITY}        xpath=//*[@id="checkout_summary_container"]/div/div[1]/div[3]/div[1]
${SHOPPING_CART_FLEECE_JACKET_QUANTITY}     xpath=//*[@id="checkout_summary_container"]/div/div[1]/div[4]/div[1]
${CHECKOUT_BUTTON}                          id=checkout
${CHECKOUT_FIRSTNAME}                       id=first-name
${CHECKOUT_LASTNAME}                        id=last-name
${CHECKOUT_ZIPCODE}                         id=postal-code
${CHECKOUT_CONTINUE}                        id=continue
${CHECKOUT_TOTAL_VALUE}                     xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[8]
${CHECKOUT_FINISH_BUTTON}                   id=finish
${CHECKOUT_THANK_YOU_LABEL}                 xpath=//*[@id="checkout_complete_container"]/h2