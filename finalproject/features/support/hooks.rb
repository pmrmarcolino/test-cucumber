After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        screenshot(scenario_name.downcase!, "faild")
    else
        screenshot(scenario_name.downcase!, "success")
    end

end