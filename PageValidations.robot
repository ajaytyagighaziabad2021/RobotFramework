*** Settings ***
Library                                  SeleniumLibrary
Resource                                 ../Templates/ElementLog.robot

*** Keywords ***
Validate text on Page
    [Arguments]                             ${TextToBeValidate}
    page should contain                      ${TextToBeValidate}
    Log to text found on the page            ${TextToBeValidate}

Validate Title of Page
    [Arguments]                             ${ExpectedTitle}
    title should be                           ${ExpectedTitle}
    Log to Title found of the page            ${ExpectedTitle}

Validate URL of Page
    [Arguments]                             ${ExpectedURL}
    location should be                        ${ExpectedURL}
    Log to URL found of the page              ${ExpectedURL}


Validate Element Exist on Page
    [Arguments]                             ${ExpectedElementLocator}
    page should contain element               ${ExpectedElementLocator}

Validate Element Should not Exist on Page
    [Arguments]                             ${ExpectedElementLocator}
    page should not contain element         ${ExpectedElementLocator}


