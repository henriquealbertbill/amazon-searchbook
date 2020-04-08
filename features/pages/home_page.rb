class HomePage < SitePrism::Page

    set_url 'https://www.amazon.com.br/'
    element :cx_pesquisa, '#twotabsearchtextbox'
    element :bt_pesquisa,  'input[value="Ir"]'
    #element :primeiro_valor, all('span.a-price-whole')


    def pes_item(pesquisa)
        cx_pesquisa.set pesquisa
        bt_pesquisa.click     
    end

    def first_price
    
        primeiro_valor = all('span.a-price-whole')[1].text
        moeda = all('span.a-price-symbol')[1].text
        decimal = all('span.a-price-fraction')[1].text
    
        puts "O resultado da pesquisa trouxe o valor de #{moeda}#{primeiro_valor},#{decimal} reais como primeiro item."
      end 
   

end