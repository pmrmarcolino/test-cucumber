    When('I do {int} + {int}') do |int, int2|
        @sum = int + int2
    end
    
    Then('the result must be {int}') do |result|
        expect(@sum).to eq(result)
    end
    
    