#language: pt
@loginbronstein

Funcionalidade: Para realizar o login na funcionalidade resultado de exames pacientes
Eu como pacientes
Quero visualizar meus exames no site Bronstein

Cenario:Validar Login de sucesso
Dado que esteja no site Bronstein
E selecione o campo Resultados de exames
E realize o login
Entao devo ser redirecionada para a pagina de meus exames

Cenario:Validar Login invalido campo CIP
Dado que preencha o campo CIP INVALIDO
E faça o login no site Bronstein
Entao devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida
