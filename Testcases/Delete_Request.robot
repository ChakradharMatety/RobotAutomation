*** Settings ***
Library  RequestsLibrary

*** Variables ***
${baseurl}  https://reqres.in
${Endpoint}  /api/users/2
${Request_Json}  C:/Users/dell/PycharmProjects/Automation/RobotTestcases/testdata.json

*** Test Cases ***
delete_http
      Create Session    deletehttp   ${baseurl}
      ${response}=  Delete Request  deletehttp  ${Endpoint}  ${Request_Json}

      Log To Console    ${response.status_code}
      Should Be Equal As Strings    ${response.status_code}    204

      