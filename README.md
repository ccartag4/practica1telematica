# README


# PRACTICA 1 TOPICOS ESPECIALES EN TELEMATICA

BY: Craig David Cartagena - ccartag4@eafit.edu.co

Este proyecto es la entrega 1 de la materia topicos especiales de ingenieria de software de la universidad de EAFIT, donde se plantea una aplicacion web que localize mi posicion actual y me muestre mi posicion cada 5 segundos.

# 1. Analisis

## 1.1 Requisitos funcionales:

1. Crear usuario
2. Obtener localizacion actual
3. Detener localizacion actual
4. Borrar localizacion actual

# Installation

## Proyecto local

se debe crear el directorio de trabajo con cd mkdir. en este caso practica1telematica

instalacion ruby:

```
sudo apt-get install ruby-full
```

creacion de un entorno de trabajo de ruby on rails: 

```
rails new <nombreaplicacion> -T -B
```

instalacion bootstrap: 

```
rails g bootstrap:install
```

creacion del modelo User y Location, genera tambien las vistas y controladores: 

```
rails g model <atributos>
```

ejecutar programa local: 

```
rails s
```

## Heroku

abrir Gem file y modificar:

```

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
end

group :development do
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :production do
  gem 'pg', '~> 0.20'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

```

abrir database.yml y modificar:

```

default: &default
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  adapter: sqlite3
  database: db/development.sqlite3

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  adapter: postgresql
  database: address_mapper_test
  


production:
  <<: *default
  database: address_mapper_production
  adapter: postgresql
ejecutar las gemas de la terminal, hemos conservado sqlite en test y desarollo, pero pg es el de production:
```
actualizar las gemas:

```
bundle install
```

para obtener el schema de la nueva base de datos se debe correr:

```
rake db:dbsetup
rake db:migrate
```
crear repositorio en github si comienza desde cero o clonar repositorio:

```
$ git clone git:https://github.com/ccartag4/practica1telematica.git


```
actualizar github, y despues enviar la aplicacion a herouku:

```
heroku create
git push heroku master
```

para actualizar github y heroku, cerrar terminal con control + c, e iniciar el servidor:

```
rails s
```

verificar el cambio:

```
git add
git commit -m "modificacion del proyecto"
git push origin master
git push heroku
```

entrar a la pagina y comprobar en este caso, pero si la creo desde cero verificar en su cuenta de heroku: 

https://gpstelematics.herokuapp.com/ 

# DCA


[https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/apache/oss/el7/deploy_app.html]













This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# practica1telematica
