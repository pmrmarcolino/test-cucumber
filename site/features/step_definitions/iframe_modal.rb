Quando('entro no modal e verifico o texto') do
   visit '/mudancadefoco/modal'
   find("a[class='waves-light btn modal-trigger']").click()
   within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eq ("Modal Teste")
        fechar = find('.modal-close.waves-green.btn-flat')
        fechar.click()
   end
end
  
Quando('entro no iframe e preencho os campos') do
    visit '/mudancadefoco/iframe'
    #pagina dentro de pagina
    within_frame('id_do_iframe') do
        #fill_in é por ID
        fill_in("first_name", with: "Maria")
        fill_in("last_name", with: "Dias")
    end
end