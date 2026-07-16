programa
{
	
	funcao inicio()
	{ 
	     // Declaração das variáveis
		inteiro quantcomputadores                     // quantidade de computadores do laboratório
	     cadeia computadores[100]                     // identificação dos computadores
		inteiro potencia[100]                        // potência dos computadores
		real horas[100]                              //horas que o computador esteve em uso por dia
		inteiro dias[100]                           // dias que o computador esteve em uso no mês
		real tarifa                      	 	   // valor da tarifa de energia por kWh
		real consumo[100]               		  // consumo de kWh por computador
		real consumototal = 0.0                   // consumo de kWh total
		real consumomedio                        // média de consumo 
		inteiro elevados = 0                     // conta a quantidade de computadores com o consumo elevado
		cadeia computadormaior = ""               //armazena o computador que teve o maior consumo
		real maiorconsumo = 0.0                  //armazena o consumo do computador que tem o consumo mais elevado
		real customensal = 0.0                   // custo mensal de energia estimado
		real porcentagemelevados = 0.0          //armazena os computadores com o consumo elevado em porcentagem
		inteiro i                                 //contador para os laços de repetição

		escreva("Quantos computadores existem no laboratório? ")                     
		leia(quantcomputadores)

		
		enquanto(quantcomputadores <= 0)                                        // Validação da quantidade de computadores.
                                                                                 // O programa só aceita valores maiores que zero.
		{
   			 escreva("Quantidade inválida. Digite novamente: ")
   			 leia(quantcomputadores)
		}
		escreva("\nQual a tarifa de energia? ")
		leia(tarifa)
		
		enquanto(tarifa <= 0)                                                 // Validação da tarifa de energia.
                                                                               // A tarifa deve ser maior que zero.
		{
  			  escreva("Tarifa inválida. Digite novamente: ")                
   			  leia(tarifa)
		}

		para(i = 0; i < quantcomputadores; i++)                             // Laço responsável por cadastrar e validar os dados de cada computador do laboratório. 
          {
          escreva("\nComputador ", i + 1, "\n")
          escreva("\nIdentificação do computador: ")
		leia(computadores[i])
		
		escreva("\nQual a potência do computador? ")
		leia(potencia[i])

		enquanto(potencia[i] <= 0)                                        // A potência deve ser maior que zero.
		{
			escreva("Valor da potência inválido. Digite novamente: ")
			leia(potencia[i])
		}	
		escreva("\nQuantas horas por dia o computador é utilizado? ")
		leia(horas[i])
		enquanto(horas[i] < 0 ou horas[i] > 24)                          // As horas de uso devem estar entre 0 e 24.
		{
			escreva("Valor de horas inválido. Digite novamente: ")
			leia(horas[i])
		}	
		escreva("\nQuantos dias no mês o computador é utilizado? ")
		leia(dias[i])
		enquanto(dias[i] <= 0 ou dias[i] > 31)                           // Os dias de uso devem estar entre 1 e 31.
		{
			escreva("Valor de dias inválido. Digite novamente: ")
			leia(dias[i])
		}	
		}

		
		
			para(i = 0; i < quantcomputadores; i++)                    // Laço responsável por calcular os dados de cada computador do laboratório.
          {    
          	// Calcula o consumo mensal de cada computador em kWh.
              // Fórmula: (Potência × Horas × Dias) ÷ 1000
          	consumo[i] = (potencia[i] * horas[i] * dias[i]) / 1000

          	// Soma o consumo de todos os computadores para obter o consumo total.
          	consumototal = consumototal + consumo[i]
          	
          	escreva("\nComputador ", computadores[i], "\n")
          	escreva("Consumo: ", consumo[i], "kWh")

          	// Classifica o consumo conforme os limites definidos no enunciado:
              // Até 20 kWh = Baixo
		   // Acima de 20 até 40 kWh = Moderado
		  // Acima de 40 kWh = Elevado
          	se (consumo[i] <= 20){
          	    escreva("\nClassificação de consumo: Baixo\n")
          		}
          	senao se (consumo[i] <= 40){
          			escreva("\nClassificação de consumo: Moderado\n")
          		}
          	senao {
          		
          			escreva("\nClassificação de consumo: Elevado\n")
          			elevados = elevados + 1
          	     }
          	     
                  // Verifica se o computador atual possui o maior consumo encontrado até o momento.
          	     se (consumo[i] > maiorconsumo){
          	     	 maiorconsumo = consumo[i]
                          computadormaior = computadores[i]
          	     	}
          }
                // Calcula a média de consumo do laboratório.
          	 consumomedio = consumototal/quantcomputadores

          	 // Calcula o custo mensal estimado de energia.
          	 customensal = consumototal * tarifa

          	 // Calcula a porcentagem de computadores com consumo elevado.
          	 porcentagemelevados = (elevados * 100.0) / quantcomputadores

          	 escreva("\n========== RELATÓRIO GERAL ==========\n")
	           escreva("\nConsumo total: ", consumototal, "kWh\n")
	           escreva("Consumo médio: ", consumomedio, "kWh\n")
	           escreva("Computador com maior consumo: ", computadormaior)
	           escreva("\nMaior consumo: ", maiorconsumo, "kWh")
	           escreva("\nCusto mensal estimado: R$", customensal)

	           se (elevados > 0){
	           escreva("\nHá ", elevados, " computadores com o consumo elevado.\n")}
	           senao {
	           	escreva("\nNão há computadores com consumo elevado.\n")}

				// Exibe a recomendação conforme a porcentagem de computadores com consumo elevado.
	           	escreva("\n========== RECOMENDAÇÃO FINAL ==========\n")
	          se (elevados == 0){
	          	escreva("\nO consumo está dentro dos parâmetros esperados!\n")
	          	}
	          senao se (porcentagemelevados <= 30){
	          	escreva("\nÉ recomendada a verificação dos equipamentos com o consumo elevado!\n")
	          	}
	          senao se (porcentagemelevados > 30){
	          	escreva("\nALERTA: É NECESSÁRIA UMA ANÁLISE ENÉRGETICA COMPLETA!\n")
	          	}
	           
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2870; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */