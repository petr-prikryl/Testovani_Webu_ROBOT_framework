*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser


*** Test Cases ***
Compare Dates
    ${current_day}=    Get Current Date    result_format=%d
    ${current_day}=    Convert To Integer    ${current_day}
    ${current_day}=    Convert To String    ${current_day}
    ${element_text}=    Get Text    xpath=//td[@class='wkday curdate']
    Should Be Equal As Strings    ${current_day}    ${element_text}
