#hash de mensagens para o usuário
mensagens = { "menu_principal" => ["Selecione a opção desejada: ", "[1] Comprar","[2] Sair"], 
              "menu_produtos" => ["Selecione a opção desejada: ", "[1]Mouse: R$50,00","[2]Headset: R$200,00","[3]Teclado: R$100,00"],
              "qtd" => "Digite a quantidade desejada:__",
              "voltar" => "Digite 0 para voltar ao menu inicial",
              "bye" => "Obrigado pela preferência!"}

#hash de produtos
produtos = { "mouse" => 50.00, "headset" => 200.00, "teclado" => 100.00 }

#variável do subtotal
subtotal = 0.00

#Início do programa
puts mensagens['menu_principal']
opcao = gets.chomp.to_i


    #Laço de repetição de compra
    while opcao == 1
    puts mensagens['menu_produtos']
    opcao = gets.chomp.to_i
         
        case opcao
        when 1    
        puts mensagens['qtd']
        qtd = gets.chomp.to_i
        subtotal += produtos['mouse'] * qtd
    
        puts "Subtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_i
        
            #condicional para voltar ao menu inicial
            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_i
            end
        
        when 2
        puts mensagens['qtd']
        qtd = gets.chomp.to_i
        subtotal += produtos['headset'] * qtd
        
        puts "Subtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_i
            
            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_i
            end
        
        when 3
        puts mensagens['qtd']
        qtd = gets.chomp.to_i
        subtotal += produtos['teclado'] * qtd
        
        puts "Subtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_i

            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_i
            end
        end 
    end #fim do laço

if opcao == 2
    puts mensagens['bye']
end

  




   






      
    




