*** Settings ***
Documentation        Arquivo de keywords da tela detalhes de produtos

Resource    ../Base.resource

*** Keywords ***
Details of the inspected product
    [Arguments]    ${product_name}    ${price_value}
    
    Wait For Elements State    css=span >> text=${product_name}    visible    timeout=5s
    Wait For Elements State    css=span >> text=${price_value}     visible    timeout=5s

Select Size
    [Arguments]    ${size}

    Wait For Elements State    css=span >> text=Size    visible    timeout=5s
    Click    css=.swatch-option >> text=M

Select Color
    [Arguments]    ${color_select}

    ${color_option}    Set Variable    
    ...        css=.swatch-option.color[aria-label="${color_select}"]    

    Wait For Elements State    css=span >> text=Color    visible    timeout=5s
    Wait For Elements State    ${color_option}           visible    timeout=5s
    Click    ${color_option}

Details Product
    [Arguments]        ${menu_options}    ${expected_text}

    ${menu}    Set Variable    css=a >> text=${menu_options}

    Wait For Elements State    ${menu}    visible    timeout=5s
    Scroll To Element          ${menu}      

Click Menu Details
    [Arguments]        ${expected_text}    

    Click    css=a >> text=Details
    Wait For Elements State    css=p >> text=${expected_text} 

Click Menu More Information
    [Arguments]        ${expected_text_th}      ${expected_text_td}      

    Click    css=a >> text=More Information
    Wait For Elements State    css=th >> text=${expected_text_th} 
    Wait For Elements State    css=td >> text=${expected_text_td} 


Click Menu Reviews
    [Arguments]        ${expected_text}    

    Click    css=#tab-label-reviews-title
    Wait For Elements State    css=strong >> text=${expected_text} 

# Select Quantity
#     [Arguments]        ${qty}

#     ${input_qty}    Set Variable      css=[name="qty"]   

#     Wait For Elements State    css=span >> text=Qty
#     Click                      ${input_qty}
#     Clear Text                 ${input_qty}
#     Fill Text                  ${input_qty}    ${qty}