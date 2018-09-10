using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto_01
{
    class Program
    {
        static void Main(string[] args)
        {
            Conta c = new Conta(1, "Isabela com Z", 1000);
            c.TipoConta = "Corrente";
            Console.WriteLine("Conta da Pessoa 1:"+c.Numero+c.Titular+c.Saldo+c.TipoConta);
            
                       
            
            c.Deposita(120.00);
            c.Numero = 22;
            Console.WriteLine("Numero: " + c.Numero);
            
           
            //Console.WriteLine("aqui"+c.getSaldo());            
            //c.Verificar_Saldo();
            //c.Sacar(100.00);

            Conta c2 = new Conta(2, "Josiel", 2000);
            

            if (c.Sacar(2000.00))
            {
                Console.WriteLine("Saque realizado com sucesso: ");
            }
            else
            {
                Console.WriteLine("Saldo insuficiente: " );
            }

            Console.ReadKey();
        }
    }

  }
