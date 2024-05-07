*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Maximize Browser Window
    Wait Until Page Contains Element    xpath=//select[@id='google_translate_element_volgte_select']
    Select From List by Value    id=google_translate_element_volgte_select    en
    ${selected_language}    Get Selected List Value    id=google_translate_element_volgte_select
    Should Be Equal As Strings    ${selected_language}    en
   Wait Until Page Contains Element    xpath=//font[text()='Office']
    ${font_text}    Get Text    xpath=//font[text()='Office']
    Should Be Equal As Strings    ${font_text}    Office