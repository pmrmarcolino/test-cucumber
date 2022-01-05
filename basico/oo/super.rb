class ClasseMae
    def correr
        puts 'a mae corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        # invoca o metodo correspondente da classe pai
        puts super
        puts 'cansei'
    end
end

correfilha = ClasseFilha.new
correfilha.correr
