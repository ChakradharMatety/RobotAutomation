*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

#     Open Context Menu    //button[@id='mousehover']
     Double Click Element    //button[@id='mousehover']
     Sleep    2
     Mouse Over    //a[@id='opentab']
     Sleep    1
     Mouse Over    //button[@id='mousehover']
     Sleep    1
     Mouse Down On Link   //a[contains(text(),'Reload')]
     Sleep    1
     Mouse Up    //a[contains(text(),'Top')]
     Sleep    1
     Click Element    //a[contains(text(),'Top')]
     Sleep    1
     Mouse Down    //a[contains(text(),'Reload')]
     Sleep    1
     Click Element    //a[contains(text(),'Reload')]
     Sleep    1
     Close Browser