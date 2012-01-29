# Just Check My API

## Pq?
O objetivo dessa parada é provar o conceito de que devemos 
monitorar as APIs e garantir que uma vez que ela respondeu 
de uma forma, ela vai continuar respondendo como eu espero 
ou eu vou ser alertado de eventuais diferenças.

## O q?
Tentei fazer isso da forma mais rápida e que tivesse um 
resultado confiável. A ideia é que a partir de uma lista
de chamadas (urls.txt) eu obtenha um resposta específica
e imutável para cadas uma das urls. Essa resposta vai
ser salva e na próxima vez que o programa rodar, se 
houver diferença, a nova resposta vai substituir a 
anterior. Isso permite que ao consultar o log de 
alterações eu saiba se algo mudou e o que mudou (diff).

## Como?
Para fazer a brincadeira rodar vc vai precisar de 3 coisas:
- Wget
- Git
- Make

O wget vai pegar a lista de urls que vc criou, vai salvar
cada uma das respostas em um caminho inteligente (para 
comportar várias chamadas de diferentes domínios) e em 
seguida commitar em um repositório local do git para
preservar um histórico.

## E agora?
Basta clonar, criar a sua lista de urls e rodar
    make run

O comando pode ser rodado quando vc ficar em dúvida sobre
alguma chamada ou ainda ser agendado para rodar (Cron).

Dentro do projeto vc encontra o diretório responses que 
é o repositório git das suas respostas de API.

## Quer mais?
Esse foi só um protótipo da funcionalidade. Dependendo da
aceitação e do interesse, podemos fazer uma versão mais
simpática ou ainda um site que faça todo o trabalho.

