programa
{
	
	funcao inicio()
	{real num1, num2,resultado
	num1=0
	num2=0
	escreva("Digite o primeiro valor: \n")
	leia(num1)
	escreva("Digite o segundo valor: \n")
	leia(num2)
		resultado = soma (num1,num2)
		escreva("o resultado da soma e: ", resultado)
		resultado = mult(num1,num2)
		escreva("o resultado da soma e: ", resultado)
		resultado = adic(num1,num2)
		escreva("o resultado da adicao e: ", resultado)
		resultado = div (num1,num2)
		escreva("o resultado da divisao e: ", resultado)
	}
	funcao real soma (real a, real b){
		real result
		result = a + b
		retorne result
	}
		funcao real mult (real a, real b){
		real result
		result = a * b
		retorne result
	}
	funcao real adic (real a, real b){
		real result
		result = a - b
		retorne result
	}
	funcao real div (real a, real b){
		real result
		result = a - b
		retorne result
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 776; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */