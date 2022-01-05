  Dado('que eu tenho umas laranjas') do |table|
    #linha
    @laranjas = table.rows_hash['laranja'].to_i
  end
  
  Quando('eu corto {int} laranjas') do |qtd_cortadas|
    @total = @laranjas - qtd_cortadas
  end
  
  Então('eu verifico quantas laranjas sobraram.') do
    expect(@total).to eq(8)
  end

  Dado('que eu tenho algumas laranjas') do |table|
    #coluna
    table.hashes.each do |valor|
      @laranjas = valor['laranja'].to_i
    end
  end
  
  Quando('eu chupo {int} laranjas') do |int|
    @total = @laranjas - int
  end