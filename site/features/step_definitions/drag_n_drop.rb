Quando('utilizo o drag and drop') do
    visit '/iteracoes/draganddrop'
    elemento = find_by_id('winston')
    local = find_by_id('dropzone')
    elemento.drag_to(local)
    sleep(5)
end