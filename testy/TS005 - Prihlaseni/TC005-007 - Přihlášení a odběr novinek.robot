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
    Input Text    id=login    ${Username}
    Input Password    id=password    ${Password}
    Click Element    xpath=${Login Button XPath}
    Wait Until Page Contains Element    //a[@title="Klikněte pro změnu profilu uživatele."]
    ${Displayed Username}    Get Text    xpath=//a[@title="Klikněte pro změnu profilu uživatele."]
    Should Be Equal    ${Displayed Username}    ${Expected Username}
    Click Element    xpath=//a[@href="http://www.cernahora.eu/abo" and @title="Odběr novinek"]
    Wait Until Page Contains    Odběr novinek - Městys Černá Hora
    Wait Until Element Is Visible    xpath=//li[contains(@class, "odbery-item")]//input[contains(@ng-model, "o.isAssigned")]
    Sleep  5s
    Click Element    xpath=//li[contains(@class, "odbery-item")]//input[contains(@ng-model, "o.isAssigned")]
    Wait Until Page Contains    Odběr Vám byl přiřazen.