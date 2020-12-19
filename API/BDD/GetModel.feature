#language:pt

Funcionalidade: Recuperação de informações sobre Modelos de acordo com a marca cadastrados na webmotors.

Cenário: Validar que requisição que retorna informações das modelos, com retorno 200. Com valores possíveis para o Accept e passando o código da marca.
         Dado que esteja realizando uma chamada de API para WebMotors
         Quando executo uma requisição para busca de modelos cadastrados
         E passo o <Accept>
         E passo o <codMake>
         Então a API deve retornar o código <cod>
         E valido o retorno do Content-Type <AcceptReturn>

|Accept          |cod|AcceptReturn    |codMake|
|application/json|200|application/json|1      |
|text/json       |200|text/json       |2      |
|application/xml |200|application/xml |3      |
|text/xml        |200|text/xml        |1      |

Cenário: Validar que requisição retorna código 200. E retorna erro ao passar o parâmetro Accept diferente dos padrões
         Dado que esteja realizando uma chamada de API para WebMotors
         Quando executo uma requisição para busca das marcas cadasatradas
         E passo o <Accept>
         Então a API deve retornar o código <cod>
         E valido o retorno do Content-Type <AcceptReturn>

|Accept     |cod|AcceptReturn     |
|audio/mpeg |200|application/json |

Cenário: Validar que requisição retorna código 400. E retorna mensagem de erro ao não passar o parâmetro MakeId
         Dado que esteja realizando uma chamada de API para WebMotors
         Quando executo uma requisição para busca das marcas cadasatradas
         E passo o <Accept>
         E passo o <codMake>
         Então a API deve retornar o código <cod>
         E valido o retorno do Content-Type <AcceptReturn>
         Então valido a messagem <menssageError>

|Accept     |cod|AcceptReturn     |menssageError          |codMake|
|audio/mpeg |400|application/json |The request is invalid.|       |