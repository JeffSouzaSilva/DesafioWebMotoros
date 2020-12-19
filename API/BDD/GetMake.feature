#language:pt

Funcionalidade: Recuperação de informações sobre Marcas cadastrados na webmotors.

Cenário: Validar que requisição que retorna informações das Marcas, com retorno 200. E os valores possíveis para o Accept
         Dado que esteja realizando uma chamada de API para WebMotors
         Quando executo uma requisição para busca das marcas cadasatradas
         E passo o <Accept>
         Então a API deve retornar o código <cod>
         E valido o retorno do Content-Type <AcceptReturn>

|Accept          |cod|AcceptReturn    |
|application/json|200|application/json|
|text/json       |200|text/json       |
|application/xml |200|application/xml |
|text/xml        |200|text/xml        |

Cenário: Validar que requisição que retorna código 400 ao passar o parâmetro Accept diferente dos padrões
         Dado que esteja realizando uma chamada de API para WebMotors
         Quando executo uma requisição para busca das marcas cadasatradas
         E passo o <Accept>
         Então a API deve retornar o código <cod>
         E valido o retorno do Content-Type <AcceptReturn>
        

|Accept     |cod|AcceptReturn     |
|audio/mpeg |400|application/json |
