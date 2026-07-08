programa
{
	funcao inicio()
	{
		real num1, num2, resultado
		cadeia operacao

		escreva("Digite o primeiro valor: ")
		leia(num1)

		escreva("Digite a operacao (+, -, *, /): ")
		leia(operacao)

		escreva("Digite o segundo valor: ")
		leia(num2)

		se (operacao == "+")
		{
			resultado = soma(num1, num2)
			escreva("Resultado: ", resultado)
		}
		senao se (operacao == "-")
		{
			resultado = sub(num1, num2)
			escreva("Resultado: ", resultado)
		}
		senao se (operacao == "*")
		{
			resultado = mult(num1, num2)
			escreva("Resultado: ", resultado)
		}
		senao se (operacao == "/")
		{
			se (num2 == 0)
			{
				escreva("Erro! Divisao por zero.")
			}
			senao
			{
				resultado = div(num1, num2)
				escreva("Resultado: ", resultado)
			}
		}
		senao
		{
			escreva("Operacao invalida!")
		}
	}

	funcao real soma(real a, real b)
	{
		retorne a + b
	}

	funcao real sub(real a, real b)
	{
		retorne a - b
	}

	funcao real mult(real a, real b)
	{
		retorne a * b
	}

	funcao real div(real a, real b)
	{
		retorne a / b
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1031; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */