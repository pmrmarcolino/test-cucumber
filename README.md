Curso base utilizado: https://www.udemy.com/course/automacao-de-testes-com-capybara-cucumber-e-ruby/

Ruby instalado: 3.0.3
Gerenciador de versão do ruby: rvm

Executando com tags
    cucumber -t @tag
    cucumber --TAGs @tag1, @tag2

    Para não executar uma tag na funcionalidade:
        cucumber -t @tag1, ~@tag2

Instalar capybara:
    gem install capybara
Doc: https://www.rubydoc.info/github/jnicklas/capybara/Capybara/Selenium/Find

Após inserir as gems no gem File, na pasta features:
    bundle install

Instalando chromedriver MAC
    https://chromedriver.storage.googleapis.com/99.0.4844.35/chromedriver_mac64.zip
    unzip chromedriver_mac64.zip
    mv chromedriver /usr/local/bin
