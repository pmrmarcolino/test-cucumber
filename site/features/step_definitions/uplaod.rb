Quando('eu faço um upload de arquivo') do
    visit '/outros/uploaddearquivos'

    # procurar por tipo file
    #attach_file('upload', path, make_visible: true)

    foto = File.join(Dir.pwd, "features/download/teste.png")
    attach_file('upload', foto, make_visible: true)

end
  