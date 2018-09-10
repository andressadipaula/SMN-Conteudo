using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto_01
{
     public class Conta
    {
        //Criação dos Atributos        
        private int numero;
        private string titular;
        private double saldo;
        private string tipoConta;
        

        public Conta(int numero, string titular, double saldo)
        {
            this.numero = numero;
            this.Titular = titular;
            this.Saldo = saldo;            
        }

        //Cria o Get e Set para os Atributos
        public int Numero { get => numero; set => numero = value; }
        public string Titular { get => titular; set => titular = value; }
        public double Saldo { get => saldo; set => saldo = value; }
        public string TipoConta { get => tipoConta; set => tipoConta = value; }

        /*Cria Get e Set de outra forma
         * public double getSaldo()
        {
            return this.saldo;
        }

        public void setSaldo(double valor)
        {
            this.saldo = valor;
        }*/

        public bool Sacar(double valor)
        {
            if(Saldo >= valor)
            {
                Saldo = Saldo - valor;
                return true;
            }
            else
            {                
                return false;
            }
        }

        public void Deposita(double valor)
        {
            Saldo += valor;
            Console.WriteLine("Deposito realizado com sucesso!" + Saldo);
        }
    }

   
}
