Given("o endereço da API") do 
    $uri_base = "https://swapi.dev/api/films/" 
end

When ("realizar a requisição") do 
    $response = HTTParty.get(uri_base)
end

Then ("deve ser pego o titulo de cada resultado de filmes, com {int}") do |int|
    expect($response.code).to eq(200)
    result = response['results']
    result.each do |title|
        puts"Titulos: #{title["title"]}"
    end
end