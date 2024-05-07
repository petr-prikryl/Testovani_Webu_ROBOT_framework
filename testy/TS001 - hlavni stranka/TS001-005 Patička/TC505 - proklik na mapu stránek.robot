*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
TestProklikuOwebu
    Click Element    xpath=//a[@href="/mapa-stranek"]
    Page Should Contain Element    xpath=//h2[contains(@class, 'cvi') and contains(text(), 'Mapa stránek')]