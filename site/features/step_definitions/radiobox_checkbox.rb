Quando('marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="red"]').click()
    find('label[for="black"]').click()
    #label clicavel
    check('grey', allow_label_click: true)
    sleep(2)
    uncheck('grey', allow_label_click: true)
    sleep(2)
    choose('yellow', allow_label_click: true)
    sleep(2)
end