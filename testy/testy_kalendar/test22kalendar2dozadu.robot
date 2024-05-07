*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Verify Calendar Navigation
    Click Element    xpath=//a[@class='sipka l']
    Click Element    xpath=//a[@class='sipka l']
    Page Should Contain Element    xpath=//a[text()='Březen 2024']
    Wait Until Element Is Visible    xpath=//td[@class='wkday done']/a[text()='5']
    Click Element    xpath=//td[@class='wkday done']/a[text()='5']
    Page Should Contain Element    xpath=//a[@href="/svoz%2Dpapiroveho%2Dodpadu/a-1878"]
