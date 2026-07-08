programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
       inteiro numero
       inteiro contador

       escreva("---NÚMEROS SORTEADOS --- \n")
       para(contador=1;contador<=6;contador++)
       {
            numero = u.sorteia(1, 60)
            escreva("Número ", contador, ": ", numero, "\n")
        }
        
        escreva("-------------------------")
     
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */