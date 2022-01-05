module ModuloNome
    # serve para agrupar classe, constantes e métodos
    # simular com a classe, porém não pode ser instanciado
    # modulo não pode ser herdado

    def method_padrao
        puts "Eu sou um modulo"
    end
end

class ClassName
    # forma de "herdar" o modulo
    include ModuloNome
end

obj = ClassName.new
obj.method_padrao