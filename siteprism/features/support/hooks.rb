After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')

    if scenario.failed?
        scheenshot(scenario_name.downcase!, "Falhou")
    else 
        scheenshot(scenario_name.downcase!, "Passou")
    end
end