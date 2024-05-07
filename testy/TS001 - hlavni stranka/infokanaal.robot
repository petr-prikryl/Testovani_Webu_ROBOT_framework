*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables *** 
${InfoChannel Link XPath}    //a[@href="/infokanal/ms-13605/p1=13605"]
${Expected Text}    Infokanál
${Registration Form Link XPath}    //a[@href="http://www.infokanal.cz/reg/CHORA"]
${Expected URL}    https://www.infokanal.cz/reg/CHORA
${Link Text}    Hlášení rozhlasem
${Expected Heading}    Hlášení místního rozhlasu

*** Test Cases ***
Test Click InfoChannel And Registration Form
    Click Element    xpath=//a[contains(text(), '${Link Text}')]
    Page Should Contain Element    xpath=//h2[contains(text(), '${Expected Heading}')]
    Click Element    xpath=${InfoChannel Link XPath}
    Wait Until Page Contains Element    xpath=//h2[contains(@class, 'cvi') and contains(@class, 'text-to-speech') and contains(text(), '${Expected Text}')]
    Click Element    xpath=${Registration Form Link XPath}
    ${current_url}    Get Location
    Should Contain    ${current_url}    ${Expected URL}
