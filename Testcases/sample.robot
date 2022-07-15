*** Settings ***

Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${baseUrl}          https://reqres.in
${endpoint}         /api/users
${Json_Request}     C:/Users/dell/PycharmProjects/Automation/RobotTestcases/testdata.json

*** Test Cases ***
PostRequest
      Create Session    postsession     ${baseUrl}
      ${Json_Boby}      Load JSON From File   ${Json_Request}
      ${response}       POST On Session   postsession     ${endpoint}     ${Json_Boby}
      Log To Console     ${response.status_code}
      Log To Console     ${response.content}
      Log To Console     ${response.json()}

      ${response_body}=   Set Variable   ${response.json()}
      Should Be Equal As Strings    ${response.status_code}    201
      Should Be Equal As Strings    ${response_body['name']}    chakradhar
      Log To Console    ${response_body['name']}

      ${name}    Get Value From Json    ${response_body}    $.name
      Log To Console    ${name}
      
      
      

      