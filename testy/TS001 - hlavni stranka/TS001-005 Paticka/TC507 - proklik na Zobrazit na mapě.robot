*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Test Click Link and Verify 404 Page
    Maximize Browser Window
    Click Link    ${LINK_TEXT22}
    Wait Until Page Contains Element    xpath://h2[@class='cvi']
    ${actual_text}    Get Text    xpath://h2[@class='cvi']
    Should Be Equal As Strings    ${actual_text}    ${EXPECTED_TEXT22}