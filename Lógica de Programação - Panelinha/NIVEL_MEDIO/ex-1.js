var num1 = 10;
var num2 = 6;
var divisor = 2;
var mdc = 1;
var mmc = 1;

do{
    if(num1 % divisor == 0 && num2 % divisor == 0){ // Quando os dois numeros são divisiveis pelo divisor
        mdc *= divisor;
        num1 /= divisor;
        num2 /= divisor;
        mmc *= divisor;
    }    
    else if(num1 % divisor == 0){ // Quando apenas o primeiro número é divisivel pelo divisor
        num1 /= divisor;
        mmc *= divisor;
    }
    else if(num2 % divisor == 0){ // Quando apenas o segundo número é divisivel pelo divisor
        num2 /= divisor;
        mmc *= divisor;
    }
    else{ // Quando nenhum dos números é divisivel pelo divisor (aumenta o divisor e recomeça)
        divisor++;
    }
} while(num1 >1 || num2 >1) // Finaliza quando os 2 números chegam a 1

console.log(mmc); // Mostra MMC
console.log(mdc); // Mostra MDC