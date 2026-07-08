programa
{
	
	funcao inicio()
	{
		real notas[10]
		real soma = 0.0, media = 0.0
		real maior_nota = 0.0, menor_nota = 100.0 
		inteiro aprovados = 0
		inteiro reprovados = 0
		inteiro i 

		escreva("*** REGISTRO DE NOTAS DA TURMA ***\n")
		
		
		para (i = 0; i < 10; i++)
		{
			escreva("Nota do ", i + 1, "º aluno (0 a 100): ")
			leia(notas[i])

			
			soma = soma + notas[i]

			
			se (notas[i] > maior_nota)
			{
				maior_nota = notas[i]
			}

			
			se (notas[i] < menor_nota)
			{
				menor_nota = notas[i]
			}

			
			se (notas[i] >= 60.0)
			{
				aprovados = aprovados + 1
			}
			senao
			{
				reprovados = reprovados + 1
			}
		}

		
		media = soma / 10

		
		escreva("\n**********************************")
		escreva("\n        NOTAS DA TURMA       ")
		escreva("\n**********************************\n")

		
		escreva("Notas digitadas: ")
		para (i = 0; i < 10; i++)
		{
			escreva("[", notas[i], "] ")
		}
		
		escreva("\n********************************")
		escreva("\nMaior nota da turma: ", maior_nota)
		escreva("\nMenor nota da turma: ", menor_nota)
		escreva("\nMédia da turma     : ", media)
		escreva("\n*********************************")
		escreva("\nAlunos Aprovados   : ", aprovados)
		escreva("\nAlunos Reprovados  : ", reprovados)
		escreva("\n***********************************\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */