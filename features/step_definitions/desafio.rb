Dado("Site de pesquisar amazom") do
home.load
end

Quando("pesquiso livro {string}") do |string|
home.pes_item('codigo limpo')
  end

Entao("retorno valor do livro") do 
  home.first_price
 end