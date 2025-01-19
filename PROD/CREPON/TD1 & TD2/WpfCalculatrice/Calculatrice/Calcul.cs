namespace Calculatrice
{
    /// <summary>
    /// Classe qui g�re toutes les op�rations arithm�tiques de la calculatrice.
    /// </summary>
    public static class Calcul
    {
        /// <summary>
        /// Additionne deux nombres.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxi�me nombre.</param>
        /// <returns>La somme de <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Addition(double a, double b)
        {
            return a + b;
        }

        /// <summary>
        /// Soustrait le deuxi�me nombre du premier.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxi�me nombre.</param>
        /// <returns>La diff�rence entre <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Soustraction(double a, double b)
        {
            return a - b;
        }

        /// <summary>
        /// Multiplie deux nombres.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxi�me nombre.</param>
        /// <returns>Le produit de <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Multiplication(double a, double b)
        {
            return a * b;
        }

        /// <summary>
        /// Divise le premier nombre par le deuxi�me.
        /// </summary>
        /// <param name="a">Num�rateur.</param>
        /// <param name="b">D�nominateur (ne doit pas �tre �gal � 0).</param>
        /// <returns>Le quotient de <paramref name="a"/> et <paramref name="b"/>.</returns>
        /// <exception cref="DivideByZeroException">Lance une exception si <paramref name="b"/> est �gal � 0.</exception>
        public static double Division(double a, double b)
        {
            if (b == 0) throw new DivideByZeroException("Impossible de diviser par 0.");
            return a / b;
        }

        /// <summary>
        /// Calcule la factorielle d'un nombre entier non n�gatif.
        /// </summary>
        /// <param name="a">Nombre entier non n�gatif.</param>
        /// <returns>La factorielle de <paramref name="a"/>.</returns>
        /// <exception cref="ArgumentException">Lance une exception si <paramref name="a"/> est n�gatif ou non entier.</exception>
        public static double Factorielle(double a)
        {
            if (a < 0) throw new ArgumentException("Le nombre doit �tre sup�rieur ou �gal � 0.");
            if (a != (int)a) throw new ArgumentException("Le nombre doit �tre un entier.");

            int res = 1;
            for (int i = 1; i <= a; i++)
            {
                res *= i;
            }

            return res;
        }
    }
}
