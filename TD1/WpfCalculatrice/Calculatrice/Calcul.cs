
namespace Calculatrice
{
    public static class Calcul
    {
        public static double Addition( double a, double b )
            { return a + b; }

        public static double Soustraction( double a, double b ) 
            { return a - b; }

        public static double Multiplication( double a, double b)
            { return a * b; }

        public static double Division(double premierNB, double secondNB)
        {
            if (secondNB != 0)
            {
                return premierNB / secondNB;
            }
            else
            {
                throw new DivideByZeroException("division par zéro impossible");
            }
        }

        public static double Factorielle( double a, double b )
        { return a }

    }

}
