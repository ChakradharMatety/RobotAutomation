*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
Library     DataDriver  ../TestData/data.xls  sheet_name=Sheet1
Suite Setup     LaunchBrowser
Suite Teardown  Close Browser
Test Template   Invalid Login

*** Test Cases ***
LoginTestwithExcel  using  ${username} ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    InputValue     ${username}
    ClearTextBox
    Sleep    2
    InputPwd     ${password}
    ClickObject
    Close Browser