*** Settings ***


*** Test Cases ***

TC1 User RegistrationTest
    [Tags]  Regression
    Log To Console    This is TC1 User RegistrationTest

TC2 LogiTest
    [Tags]  Sanity
    Log To Console    This is TC2 LogiTest


TC3 Change user settings
    [Tags]  Sanity
    Log To Console    This is TC3 Change user settings

TC4 Logout Test
    [Tags]  Regression
    Log To Console    This Is TC4 Logout Test

TC5 Logout Test
    [Tags]  Smoke
    Log To Console    This Is TC5 Smoke Test

# robot --include=Sanity UIRobotTestcases\Tagging.robot
# robot --include=Regression UIRobotTestcases\Tagging.robot
# robot -i Regression -i Smoke UIRobotTestcases\Tagging.robot
# robot --exclude Regression UIRobotTestcases\Tagging.robot
# robot -e Regression UIRobotTestcases\Tagging.robot


