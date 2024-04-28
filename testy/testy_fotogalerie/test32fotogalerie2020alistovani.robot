*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser
*** Test Cases ***
Test Fotogalerie 2012    
    Click Element    xpath=//a[@href='/fotogalerie/ms-55/p1=12583']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), 'Fotogalerie')]
    Click Element    xpath=//a[@href='/2020/ms-9140/p1=9140']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), '2020')]
    Click Element    xpath=//a[@href='/sbirka%2Dkrabice%2Dod%2Dbot%2D29%2D11%2D2020/gs-1329/p1=9140']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), 'Sbírka Krabice od bot (29. 11. 2020)')]
    Click Element    xpath=//span[@class='strvpred']/a[@class='aktivni']
    Wait Until Element Is Visible    xpath=//div[@class='zarovnani']
    ${element_text}=    Get Text    xpath=//div[@class='zarovnani']
    Should Contain    ${element_text}    Zobrazeno je 2 z celkem 26 záznamů na stránce