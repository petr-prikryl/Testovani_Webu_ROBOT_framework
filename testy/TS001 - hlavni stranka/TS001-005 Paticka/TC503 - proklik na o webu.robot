*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
TestProklikuOwebu
    Click Element    xpath=//a[@href='/vismo/o-webu.asp']
    Page Should Contain Element    xpath=//h2[@class='cvi' and contains(text(), 'O webu')]