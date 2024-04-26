*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${Link Text}    Hlášení rozhlasem
${Expected Heading}    Hlášení místního rozhlasu


*** Test Cases ***
Test Click Link and Verify Heading
    Click Element    xpath=//a[contains(text(), '${Link Text}')]
    Page Should Contain Element    xpath=//h2[contains(text(), '${Expected Heading}')]
