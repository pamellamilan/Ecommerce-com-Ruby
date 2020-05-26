login_page = LoginPage.new

Dado("que esteja no site Delboni") do
  visit ("http://hml.delboniauriemo.cmsdasa.com.br/")
end

Dado("selecione o campo Resultados de exames") do
  login_page.Formulario.click
end

Dado("realize o login") do
  login_page.CIP.set ""
  login_page.Senha.set ""
  login_page.Nascimento.set ""
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina de meus exames") do
  page.has_content?'http://laudos-hml.delboniauriemo.com.br.s3-website-sa-east-1.amazonaws.com/#/home'
  #login_page.Sair.click
  expect(page).to have_no_link("Foo", :href=> "/gliese/rot_div/fim.asp?u=%2Fgliese%2Fbronstein%2Fpaclogin%2Easp")
end

Dado("que preencha o campo CIP INVALIDO") do
  visit("http://hml.delboniauriemo.cmsdasa.com.br/")
    login_page.Formulario.click
    login_page.CIP.set ""
    login_page.Senha.set ""
    login_page.Nascimento.set ""
end

Dado("faça o login no site Delboni") do
  login_page.Enviar.click
  sleep(5)
end

Entao("devo ser redirecionada para a pagina do Sislu e uma msg de alerta deve ser exibida") do
  page.has_content?'Acesso não autorizado'
end
