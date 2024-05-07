*** Settings ***
Library    SeleniumLibrary
Resource    ../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser
*** Test Cases ***
Test Fotogalerie 2012    
    Click Element    xpath=//a[@href='/fotogalerie/ms-55/p1=12583']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), 'Fotogalerie')]
    Click Element    xpath=//a[@href='/2012/ms-2189/p1=2189']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), '2012')]
    Click Element    xpath=//a[@href='/vyroba%2Dvanocnich%2Dozdob%2Dz%2Dkoralku%2D12%2D12%2D2012/gs-1024/p1=2189']
    Wait Until Element Is Visible    xpath=//h2[contains(@class, 'cvi') and contains(text(), 'Výroba vánočních ozdob z korálků (12.12.2012)')]