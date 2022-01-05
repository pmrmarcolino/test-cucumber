#classe começa com letra maiscula
# a classe contem atributos, métodos e construtrores

class ClassName
    # get e set do Java
    attr_accessor :nome
    
    #
    #attr_reader :nomeone
    def initialize (nome = "Ola")
        @nome = nome

    end

    #nome minusculo e nome composto com underline 
    def method_name
        puts 'Corpo do method'
    end

end

class FilhaHeranca < ClassName
end

obj_heranca = FilhaHeranca.new
obj_heranca.method_name 


ob = ClassName.new
nome = ob.nome = 'Pat'
puts "2- "
ob.method_name.to_s
puts "3- " + nome.to_s