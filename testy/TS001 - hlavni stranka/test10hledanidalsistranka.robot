*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${Expected Link Text}    Žádost o povolení uzavřít manželství na jiném vhodném místě
*** Test Cases ***
Test Hledani
    Maximize Browser Window
    Click Element    xpath=//a[contains(@class, 'fullscreen-search-anchor')]
    Input Text    id=hl    matrika
    Click Button    css=.fullscreen-search-button
    Click Element    link=2
    ${link_visible}    Page Should Contain Element    xpath=//a[contains(text(),'${Expected Link Text}')]