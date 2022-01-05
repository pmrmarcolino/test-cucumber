class Cachorro
    def latir
        puts 'Au au'
    end
end

class CachorroGrande
    def latir
        puts "Aou Aou"
    end
end

class Pessoa
    def agarraCachorro (cachorro)
        cachorro.latir
    end
end

cao = Cachorro.new
caogrande = CachorroGrande.new
person = Pessoa.new

person.agarraCachorro(cao)
person.agarraCachorro(caogrande)
