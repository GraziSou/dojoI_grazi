Quando(/^pesquiso um empregado$/) do 

  find(:id,'menu_pim_viewPimModule').click 
  fill_in('empsearch_employee_name_empName', :with =>'Grazi')

  #Clicar no botão de pesquisa
  click_button('searchBtn')

  #Clicar no nome a ser alterado
  click_link('Grazi Maria')

  #Clicar no botão Editar
  click_button('btnSave')

  #Alterar o campo sobrenome
  fill_in('personal_txtEmpMiddleName', :with =>'Ribeiro')

  #clicar no botão salvar alteração
  click_button('btnSave')

end                                                                                  
                                                                                     
Então(/^realizo a alteração do cadastro$/) do                                        
  assert_text('Successfully Saved')
end                                                                                  
                                                                                     