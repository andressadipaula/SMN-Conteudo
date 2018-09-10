// 12) Escreva um programa que receba como entrada um número inteiro 
// e calcule a sequência de Fibonacci até esse número.

var inicio, proximo, fim, auxiliar;
inicio=0;
proximo=1;
fim=50;
while(inicio<=fim){
    console.log(inicio);
    auxiliar=proximo;
    proximo+=inicio;
    inicio=auxiliar;
}


