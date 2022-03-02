
Quando('acesso o {string}') do |site|
    visit site
  end
  
  Então('clico nos {string}') do |click|
    #click_on(click)
    #click_button(class: click)
    find(click).click
  end