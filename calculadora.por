programa
{
	funcao inicio()
	{
		inteiro num1, num2, resultado
		cadeia operacao
		cadeia continuar

		continuar = "S"

		enquanto (continuar == "S" ou continuar == "s")
		{
			escreva("===== CALCULADORA =====\n")

			escreva("Digite o primeiro valor: ")
			leia(num1)

			escreva("Digite a operacao (+, -, *, /): ")
			leia(operacao)

			escreva("Digite o segundo valor: ")
			leia(num2)

			se (operacao == "+")
			{
				resultado = soma(num1, num2)
				escreva(num1, " + ", num2, " = ", resultado, "\n")
			}
			senao se (operacao == "-")
			{
				resultado = subtracao(num1, num2)
				escreva(num1, " - ", num2, " = ", resultado, "\n")
			}
			senao se (operacao == "*")
			{
				resultado = multiplicacao(num1, num2)
				escreva(num1, " * ", num2, " = ", resultado, "\n")
			}
			senao se (operacao == "/")
			{
				se (num2 == 0)
				{
					escreva("Nao pode ser calculada!\n")
				}
				senao
				{
					resultado = divisao(num1, num2)
					escreva(num1, " / ", num2, " = ", resultado, "\n")
				}
			}
			senao
			{
				escreva("Operacao invalida!\n")
			}

			escreva("\nDeseja usar a calculadora?\n")
			escreva("S - Sim\n")
			escreva("N - Nao\n")
			leia(continuar)


			escreva("\n")
		}

		escreva("Calculadora encerrada.")
	}

	funcao inteiro soma(inteiro a, inteiro b)
	{
		retorne a + b
	}

	funcao inteiro subtracao(inteiro a, inteiro b)
	{
		retorne a - b
	}

	funcao inteiro multiplicacao(inteiro a, inteiro b)
	{
		retorne a * b
	}

	funcao inteiro divisao(inteiro a, inteiro b)
	{
		retorne a / b
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */