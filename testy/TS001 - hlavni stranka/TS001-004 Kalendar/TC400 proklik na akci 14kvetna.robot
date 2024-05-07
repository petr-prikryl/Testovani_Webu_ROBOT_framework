*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Verify Calendar Navigation
    Page Should Contain Element    xpath=//a[text()='Květen 2024']
    Wait Until Element Is Visible    xpath=//td[@class='wkday']/a[text()='14']
    Click Element    xpath=//td[@class='wkday']/a[text()='14']
    Page Should Contain Element    xpath=//a[@href='/svoz%2Dplastoveho%2Dodpadu/a-1883']
