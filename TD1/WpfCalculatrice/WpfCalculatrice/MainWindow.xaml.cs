using Calculatrice;
using System;
using System.Windows;
using System.Windows.Controls;

namespace WpfCalculatrice
{
    public partial class MainWindow : Window
    {
        private Calculatrice calc;

        public MainWindow()
        {
            InitializeComponent();
            calc = new Calculatrice();
            DataContext = calc;
        }

        private void Addition_Click(object sender, RoutedEventArgs e)
        {
            //calc.Resultat = calc.Addition(calc.PremierNB, calc.SecondNB);
            calc.Resultat = Calcul.Addition(calc.PremierNB, calc.SecondNB);
        }

        private void Soustraction_Click(object sender, RoutedEventArgs e)
        {
            //calc.Resultat = calc.Soustraction(calc.PremierNB, calc.SecondNB);
            calc.Resultat = Calcul.Soustraction(calc.PremierNB, calc.SecondNB);
        }

        private void Multiplication_Click(object sender, RoutedEventArgs e)
        {
            //calc.Resultat = calc.Multiplication(calc.PremierNB, calc.SecondNB);
            calc.Resultat = Calcul.Multiplication(calc.PremierNB, calc.SecondNB);
        }

        private void Division_Click(object sender, RoutedEventArgs e)
        {
            //try
            //{
            //    calc.Resultat = calc.Division(calc.PremierNB, calc.SecondNB);
            //}
            //catch (DivideByZeroException ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}
            calc.Resultat = Calcul.Division(calc.PremierNB, calc.SecondNB);
        }
    }
}