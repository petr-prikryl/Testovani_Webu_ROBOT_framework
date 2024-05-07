*** Settings ***
Library    SeleniumLibrary
Resource    ../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***


*** Test Cases ***
Test Login And Verify Username
    Maximize Browser Window
    Click Element    xpath=${Login Link XPath}
    Wait Until Element Is Visible    xpath=//h2[@class="cvi" and text()="Přihlášení uživatele"]
    Input Text    id=login    ${2ndUsername}
    Click Element    xpath=${Login Button XPath}
    Sleep    2s
    Alert Should Be Present   ${Popup}