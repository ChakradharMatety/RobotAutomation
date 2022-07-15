*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary

*** Variables ***
${baseurl}=  https://reqres.in
${endpoint}=  /api/users
${Json_Request}=  C:/Users/dell/PycharmProjects/Automation/RobotTestcases/testdata.json

*** Test Cases ***
Post_Http
     Create Session    postsession    ${baseurl}
     ${Json_body}=  Load JSON From File  ${Json_Request}
     ${response}=  POST On Session  postsession  ${endpoint}  ${Json_body}
     ${Json_Response}=  Set Variable  ${response.json()}
     Log To Console    ${response.status_code}
     Log To Console    ${response.content}
     Log To Console    ${response.json()}
     Should Be Equal As Strings    ${response.status_code}    201
     Should Be Equal As Strings    ${Json_Response['name']}    chakradhar
     ${name}=  Get Value From Json    ${Json_Response}    $.name
     Log To Console    ${name}
