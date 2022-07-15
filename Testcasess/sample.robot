*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browse}   firefox
*** Test Cases ***
tc1
    Open Browser   ${url}   ${browse}
    Maximize Browser Window
    Click Link    Log in
#
#    Close Browser