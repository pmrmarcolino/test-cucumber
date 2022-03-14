
Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'
    #recebe janela aberta pelo link
    window_opened_by { click_link 'Clique aqui' }
    
    #muda de foco para a janela
    within_window windows.last do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        windows.last.close
    end
    #--------- segunda forma
    #visit '/mudancadefoco/janela'
    #click_link 'Clique aqui'
    #switch_to_window(windows.last)
    #expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    #mensagem = find('h5')
    #expect(mensagem.text).to eq 'Você Abriu uma nova janela!!'
    #windows.last.close
end
  
Quando('eu entro no alert eu verifico e faço a ação') do
    
end