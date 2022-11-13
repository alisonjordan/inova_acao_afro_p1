#Módulo Carrinho de compras
module CarrinhoDeCompras
    @@subtotal = 0.00
    @@mensagens = { "menu_principal" => ["Selecione a opção desejada: ", "[1] Comprar","[2] Sair"], 
                    "menu_produtos" => ["Selecione a opção desejada: ", "[1]Mouse: R$50,00","[2]Headset: R$200,00","[3]Teclado: R$100,00"],
                    "qtd" => "Digite a quantidade desejada: ",
                    "voltar" => "Digite 0 para voltar ao menu inicial: ",
                    "bye" => "Obrigado pela preferência!"}
  
  
    #Função para chamar o menu principal
    def menuinicial(opcao)
      puts @@mensagens['menu_principal']
      opcao = gets.chomp.to_i
        if  opcao == 1
          comprar(opcao)
        
        else 
          puts @@mensagens['bye']
        end
        
    end #fim da função menuinicial
  
    #Função para adicionar produtos no carrinho
    def comprar(opcao)
    produtos = { "mouse" => 50.00, "headset" => 200.00, "teclado" => 100.00 }
   
      while opcao == 1
        puts @@mensagens['menu_produtos']
        opcao = gets.chomp.to_i
        
        case opcao
              when 1    
              print @@mensagens['qtd']
              qtd = gets.chomp.to_i
              @@subtotal += produtos['mouse'] * qtd
              
              
              puts "Subtotal: R$#{@@subtotal}"
              print @@mensagens['voltar']
              opcao = gets.chomp.to_i
              
              menuinicial(opcao)
              
              when 2
              print @@mensagens['qtd']
              qtd = gets.chomp.to_i
              @@subtotal += produtos['headset'] * qtd
              
              puts "Subtotal: R$#{@@subtotal}"
              print @@mensagens['voltar']
              opcao = gets.chomp.to_i
              
              menuinicial(opcao)
              
              when 3
              print @@mensagens['qtd']
              qtd = gets.chomp.to_i
              @@subtotal += produtos['teclado'] * qtd
              
              puts "Subtotal: R$#{@@subtotal}"
              print @@mensagens['voltar']
              opcao = gets.chomp.to_i
              
              menuinicial(opcao)
        end #fim do case
      end #fim do laço
    end #fim da função comprar
  end #fim do módulo
  
  #Início do programa
  include CarrinhoDeCompras
  menuinicial(nil)