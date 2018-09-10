
//10 Escreva um programa para descobrir se o número é primo ou não, 
//a entrada é composta por apenas um número inteiro.

// var numero= parseInt(prompt("Digite um numero: "));
var numero= 6;
var contador=0;

for(var i=1; i<=numero;i++){
    if(numero%i==0){
       // document.write("<br>Primo");
        contador++;        
    }
}

 if(contador==2){
        console.log("PRIMO");
    }
    else{
        console.log("NÂO PRIMO");
    }
