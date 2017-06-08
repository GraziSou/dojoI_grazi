#language: pt
#utf-8

Dado(/^que acesso o site orangehrm$/) do
  visit("http://opensource.demo.orangehrmlive.com/index.php/auth/login")
end

Quando(/^cadastro um novo empregado$/) do
  find(:id, 'menu_pim_viewPimModule').click

  #Clicar no botão adicionar usuário
  click_button('btnAdd')

  #Nome Employee
  fill_in('firstName', :with =>'Grazi')

  #Nome usuário
  fill_in('middleName', :with =>'Maria')

  #Senha
  fill_in('lastName', :with =>'Sousa')

  click_button('btnSave')
end

Quando (/^realizo login$/) do 
  fill_in('txtUsername', :with =>'Admin')
  fill_in('txtPassword', :with =>'admin')
  click_button('btnLogin')
end

Então (/^é exibida a pagina inicial$/) do
  assert_text('Dashboard')
end

Então(/^empregado é cadastrado com sucesso$/) do
  assert_text('Personal Details')
end
