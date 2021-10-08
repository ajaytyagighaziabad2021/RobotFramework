*** Settings ***
Library                                  SeleniumLibrary
Resource                                 ../Templates/ElementLog.robot

*** Keywords ***
Validate partial text on Element
    [Arguments]                              ${Element_Locator}             ${TextToBeValidate}
    element should contain                   ${Element_Locator}             ${TextToBeValidate}

Validate exact text on Element
    [Arguments]                              ${Element_Locator}             ${TextToBeValidate}
    element text should be                   ${Element_Locator}             ${TextToBeValidate}

Validate attribute of Element
    [Arguments]                              ${Element_Locator}             ${Attribute_Name}          ${TextToBeValidate}
    element attribute value should be        ${Element_Locator}             ${Attribute_Name}          ${TextToBeValidate}

Validate Element Should be Enable
    [Arguments]                              ${Element_Locator}
    element should be enabled                ${Element_Locator}

Validate Element Should be Visible
    [Arguments]                              ${Element_Locator}
    element should be visible                ${Element_Locator}

Validate Element Should Not be Visible
    [Arguments]                              ${Element_Locator}
    element should not be visible            ${Element_Locator}

