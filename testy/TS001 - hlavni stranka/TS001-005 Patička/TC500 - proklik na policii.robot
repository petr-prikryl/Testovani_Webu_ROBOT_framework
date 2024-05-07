*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Open Links and Verify URLs
   Click Element    xpath=//img[@alt='logo policie ČR']
   Switch Window    NEW
    Wait Until Page Contains    policie.cz
    Location Should Be    https://www.policie.cz/SCRIPT/imapa.aspx?area=jm&docid=726&nid=275&num=1
    Close Window