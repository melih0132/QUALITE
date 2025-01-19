namespace Calculatrice
{
    /// <summary>
    /// Classe qui gère toutes les opérations arithmétiques de la calculatrice.
    /// </summary>
    public static class Calcul
    {
        /// <summary>
        /// Additionne deux nombres.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxième nombre.</param>
        /// <returns>La somme de <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Addition(double a, double b)
        {
            return a + b;
        }

        /// <summary>
        /// Soustrait le deuxième nombre du premier.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxième nombre.</param>
        /// <returns>La différence entre <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Soustraction(double a, double b)
        {
            return a - b;
        }

        /// <summary>
        /// Multiplie deux nombres.
        /// </summary>
        /// <param name="a">Premier nombre.</param>
        /// <param name="b">Deuxième nombre.</param>
        /// <returns>Le produit de <paramref name="a"/> et <paramref name="b"/>.</returns>
        public static double Multiplication(double a, double b)
        {
            return a * b;
        }

        /// <summary>
        /// Divise le premier nombre par le deuxième.
        /// </summary>
        /// <param name="a">Numérateur.</param>
        /// <param name="b">Dénominateur (ne doit pas être égal à 0).</param>
        /// <returns>Le quotient de <paramref name="a"/> et <paramref name="b"/>.</returns>
        /// <exception cref="DivideByZeroException">Lance une exception si <paramref name="b"/> est égal à 0.</exception>
        public static double Division(double a, double b)
        {
            if (b == 0) throw new DivideByZeroException("Impossible de diviser par 0.");
            return a / b;
        }

        /// <summary>
        /// Calcule la factorielle d'un nombre entier non négatif.
        /// </summary>
        /// <param name="a">Nombre entier non négatif.</param>
        /// <returns>La factorielle de <paramref name="a"/>.</returns>
        /// <exception cref="ArgumentException">Lance une exception si <paramref name="a"/> est négatif ou non entier.</exception>
        public static double Factorielle(double a)
        {
            if (a < 0) throw new ArgumentException("Le nombre doit être supérieur ou égal à 0.");
            if (a != (int)a) throw new ArgumentException("Le nombre doit être un entier.");

            int res = 1;
            for (int i = 1; i <= a; i++)
            {
                res *= i;
            }

            return res;
        }
    }
}
