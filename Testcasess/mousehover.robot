*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlessfirefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

#    Open Context Menu    //button[@id='mousehover']
#    Double Click Element    //button[@id='mousehover']
     Sleep    3
#    Mouse Over    //a[@id='opentab']
     Mouse Over    //button[@id='mousehover']
     Mouse Down On Link    //a[contains(text(),'Reload')]
     Mouse Up    //a[contains(text(),'Top')]
     Click Element    //a[contains(text(),'Top')]
#     Mouse Down    //a[contains(text(),'Reload')]
#     Click Element    //a[contains(text(),'Reload')]
      Close Browser