# DesafioWebMotors

Requisitos:

Ruby 2.5.8p224 com DevKit
ChromeDriver 87.0.4280.20

Após baixar e descompctar a pasta DesafioWebMotors, será necessário acessar o diretório "...\Web\DesafioWebMotors" 
e executar o comando: "bundler install" 
em seguida, executar o comando "bundle install"

Dessa forma o ambiente para execução dos testes estará pronto.

Tags:

A partir do diretório: "...\Web\DesafioWebMotors"

Executar: 
cucumber -t @buscaVeiculo   ENV_TYPE=dev

ou

cucumber -t @listagemLoja   ENV_TYPE=dev
