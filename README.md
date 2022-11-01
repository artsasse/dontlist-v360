# README

Lista de tarefas desenvolvida como desafio técnico do processo seletivo da V360.

## Ruby

* Versão do Ruby em que este projeto foi desenvolvido: 3.1.2

* Dependências do projeto estão no Gemfile e Gemfile.lock. 

## Configuração

* Para configurar o ambiente de uma vez só, basta executar:
```
bin/setup
```

* Para semear o banco de dados com dados artificiais, execute:
```
bin/rail db:seed
```

## Testes

* Para rodar os testes de sistema, basta executar:
```
bin/rails test:system
```

## Linter

* Para rodar o Linter (RuboCop) com as correções automáticas, basta executar no terminal:
```
rubocop -a
```

## Links

* Drive com documentos de apoio do projeto:
https://drive.google.com/file/d/1m8RW5aJsUJxJgY78UWddyAJKPhQLE0wx/view?usp=share_link

* Link do app no Heroku: https://arcane-peak-05014.herokuapp.com/

## Heroku

* Seguindo as instruções deste [tutorial](https://youtu.be/mpWFrUwAN88?t=1779) para rodar no Heroku, devemos adaptar o programa primeiro:
  * Adaptar o programa para um banco de dados Postgre com o comando:
  ```
  rails db:system:change --to=postgresql
  ```
  * Baixar as novas dependências geradas com:
  ```
  bundle
  ```
  * Adaptar o programa para um ambiente Linux com o comando:
  ```
  bundle lock --add-platform x86_64-linux
  ```
  * Commitar e dar push nas mudanças para a branch `main` do repositório no Heroku
  * Lembre-se de tirar o sistema do modo de manutenção com:
  ```
  heroku maintenance:off
  ```
