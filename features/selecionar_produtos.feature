Feature: Selecionar Produto

Scenario: Selecionar produto "Sauce Labs Backpack"
     Given que acesso o site Sauce Demo
     When preencho os campos de login com usuario standard_user e senha secret_sauce
     Then sou direcionado para pagina Home
  

Scenario: Login com a senha invalida  
     Given que acesso o site Sauce Demo
     When preencho os campos de login com usuario standard_user e senha laranja
     Then exibe a mensagem de erro no login

 Scenario Outline: Login negativo 
     Given que acesso o site Sauce Demo
     When preencho os campos de login com usuario <usuario> e senha <senha>
     Then exibe a <mensagem> de erro no login

     Examples:
     | usuario       | senha        | mensagem
     | standard_user | laranja      | Epic sadface: Username and password do not match any user in this service
     | standard_user |              | Epic sadface: Password is required
     |               | secret_sauce | Epic sadface: Username is required
     | juca          | secret_sauce | Epic sadface: Username and password do not match any user in this service
     | juca          | laranja      | Epic sadface: Username and password do not match any user in this service
     | juca          |              | Epic sadface: Password is required
     |               |              | Epic sadface: Username is required
     |               | laranja      | Epic sadface: Username is required