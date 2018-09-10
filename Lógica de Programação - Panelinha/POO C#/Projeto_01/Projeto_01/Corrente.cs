using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto_01
{
    
    public class Corrente : Conta
    {
        private double taxa;
        public Corrente(int numero, string titular, double saldo) : base(numero, titular, saldo)
        {
           
        }

        public double Taxa { get => taxa; set => taxa = value; }
    }
}
