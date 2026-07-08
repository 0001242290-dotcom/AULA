programa
{
	funcao inicio()
	{
		inteiro voto
		inteiro joao, maria, carlos, nulos

		joao = 0
		maria = 0
		carlos = 0
		nulos = 0

		escreva("1 - João\n")
		escreva("2 - Maria\n")
		escreva("3 - Carlos\n")
		escreva("0 - Encerrar\n")

		escreva("Digite seu voto: ")
		leia(voto)

		enquanto(voto != 0)
		{
			se(voto == 1)
			{
				joao = joao + 1
			}
			senao
			{
				se(voto == 2)
				{
					maria = maria + 1
				}
				senao
				{
					se(voto == 3)
					{
						carlos = carlos + 1
					}
					senao
					{
						nulos = nulos + 1
					}
				}
			}

			escreva("Digite seu voto: ")
			leia(voto)
		}

		escreva("\nResultado da votação\n")
		escreva("João: ", joao, "\n")
		escreva("Maria: ", maria, "\n")
		escreva("Carlos: ", carlos, "\n")
		escreva("Nulos: ", nulos, "\n")

		se(joao > maria e joao > carlos)
		{
			escreva("Vencedor: João")
		}
		senao
		{
			se(maria > joao e maria > carlos)
			{
				escreva("Vencedor: Maria")
			}
			senao
			{
				se(carlos > joao e carlos > maria)
				{
					escreva("Vencedor: Carlos")
				}
				senao
				{
					escreva("Empate!")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 959; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */