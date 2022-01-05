class MegaAnfitriao
    attr_accessor :nomes

    def initialize(nomes = "Mundo")
        @nomes =  nomes
    end

    def diz_ola
        if @nomes.nil?
            put "..."
        elsif @nomes.reponsd_to?("each")
           @nomes.each do |nome|
                puts "Ola #{nome}"
            end 
        else
            puts "Ola #{@nomes}"
        end
    end

    def diz_adeus
        if @nomes.nil?
            puts
        elsif @nomes.reponsd_to?("join")
            puts "Adeus #{@nomes.join(",")}. Volte sempre."
        else 
            puts "Adeus #{@nomes}. Volte sempre"
        end
    end
end

if __FILE__ == $0
    mg = MegaAnfitriao.new
    mg.diz_ola
    mg.diz_adeus

    mg.nomes = "Diego"
    mg.diz_ola
    mg.diz_adeus

    mg.nomes = ["Alberto", "Beatriz", "Mario Alberto", "Carlos", "Ernesto"]
    mg.diz_ola
    mg.diz_adeus

    mg.nomes = nil
    mg.diz_ola
    mg.diz_adeus
end