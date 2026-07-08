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
		resultado = multiplicacao(num1,num2)
		escreva("o resultado e: ", resultado)
	}
	funcao real multiplicacao(real a, real b){
		real result
		result = a * b
		retorne result
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */