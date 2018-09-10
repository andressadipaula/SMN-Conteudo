using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex01
{
    class Program
    {
        static void Main(string[] args)
        {
            double vlrInicial = 550.00;
            double rejuste = 0.10;
            double vlrTotal = 1;
            double desconto;

            Console.WriteLine("Valor inicial: R$ " + vlrInicial);
            for(int i = 1; i <= 4; i++)
            {
                if (i == 1)
                {
                    vlrTotal = vlrInicial * 12;
                }
                else{
                    vlrInicial = vlrInicial + (vlrInicial * 0.10);
                    vlrTotal = vlrTotal + vlrInicial * 12;
                }

            }
            

            Console.WriteLine("Valor total R$ " + vlrTotal);
            Console.Write("Qual desconto: ");
            desconto = Convert.ToDouble(Console.ReadLine());

            vlrTotal = vlrTotal - (vlrTotal * desconto/100);

            Console.WriteLine("Valor final: " + vlrTotal);

            Console.ReadKey();


        }
    }

}
