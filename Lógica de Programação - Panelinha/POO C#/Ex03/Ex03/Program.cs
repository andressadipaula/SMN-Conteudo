using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex03
{
    class Program
    {
        static void Main(string[] args)
        {
           
            Console.Write("Informe um número: ");
            string digito = Console.ReadLine();

            if(digito.Length >= 3)
            {
                char[] array = digito.ToCharArray();
                Array.Reverse(array);
                string invertido = "";

                foreach(char c in array)
                {
                    invertido += c.ToString();
                }
                Console.WriteLine("Digitos invertidos: " + invertido);

            }

            Console.ReadLine();
            
            

        }
    }
}
