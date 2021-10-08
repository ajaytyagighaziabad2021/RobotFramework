*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../Templates/ElementLog.robot

*** Keywords ***
User fetch complete HTML of page
    [Documentation]                      Fetch and Return complete Page Source(HTML)
    ${Page_Html}=                        get source
    [Return]                             ${Page_Html}

User fetch Title of the page
    [Documentation]                      Fetch and Return Title of the Page
    ${Page_Title}=                       get title
    [Return]                             ${Page_Title}

User fetch URL of the page
    [Documentation]                      Fetch and Return URL of the Page
    ${Page_Title}=                       get location
    [Return]                             ${Page_Title}

User fetch text of the element
    [Documentation]                      Get Element Locator & Fetch and Return complete Page Source(HTML)
    [Arguments]                          ${Element_Locator}
    ${Element_Text}=                     get text                             ${Element_Locator}
    [Return]                             ${Element_Text}

User fetch attribute of element
    [Documentation]                      Get Element Locator and Attribute name & Fetch and Return attribute value
    [Arguments]                          ${Element_Locator}                   ${Attribute_Name}
    ${Element_Att_Text}=                 get element attribute                ${Element_Locator}           ${Attribute_Name}
    [Return]                             ${Element_Att_Text}

User fetch count of elements
    [Documentation]                      Get Element Locator and Return count of Elements matching with locator
    [Arguments]                          ${Element_Locator}
    ${count}=                            get element count                   ${Element_Locator}
    [Return]                             ${count}

User fetch labels of all items in list
    [Documentation]                      Get Element Locator and Return Labels of all list items
    [Arguments]                          ${Element_Locator}
    ${all_list_items}=                   get list items                    ${Element_Locator}
    [Return]                             ${all_list_items}




