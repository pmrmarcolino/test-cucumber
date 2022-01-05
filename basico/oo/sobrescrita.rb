class ClasseMae
    def correr
        puts 'a mae corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        puts 'a filha corre'
    end
end

correfilha = ClasseFilha.new
correfilha.correr

corremae = ClasseMae.new
corremae.correr