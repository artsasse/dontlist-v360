# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Versão do Ruby em que este projeto foi desenvolvido: 3.1.2

* Dependências do projeto estão no Gemfile e Gemfile.lock. 
  Basta executar ```bundle install``` no terminal para instalá-las.

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Links

* Drive com documentos de apoio do projeto:
https://drive.google.com/file/d/1m8RW5aJsUJxJgY78UWddyAJKPhQLE0wx/view?usp=share_link

* Link do app no Heroku: https://arcane-peak-05014.herokuapp.com/

## Linter

* Para rodar o Linter (RuboCop) com as correções automáticas, basta executar no terminal:
```
rubocop -a
```

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
