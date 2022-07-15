*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary

*** Variables ***
${baseurl}  https://reqres.in
${endpoint}  /api/users

*** Test Cases ***
Post_Http
     Create Session    postsession    ${baseurl}
     ${body}=   Create Dictionary   name=morpheus   job=leader
     ${response}=  POST On Session  postsession  ${endpoint}  ${body}
     ${Json_Body}=  Set Variable  ${response.json()}
     Log To Console    ${response.status_code}
     Log To Console    ${response.content}
     Log To Console    ${response.json()}
     Should Be Equal As Strings    ${response.status_code}    201
     Should Be Equal As Strings    ${Json_Body['name']}    morpheus