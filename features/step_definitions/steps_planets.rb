Given("o endereço da API") do 
    $uri_base = "http://swapi.dev/api/planets/" 
end

When ("realizar a requisição") do 
    $response = HTTParty.get(uri_base)
end

Then ("deve ser pego o numero total de planetas, com {int}") do |int|
    expect(response.code).to eq(200)
    count = response["count"]
    random = Random.rand(count+1 .. 100) 
    puts(random)
    $response2 = HTTParty.get(uri_base, count)
    puts(response.code)
end