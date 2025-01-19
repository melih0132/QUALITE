using Calculatrice;
using System.ComponentModel;
using System.Windows;

namespace WpfCalculatrice
{
    /// <summary>
    /// Logique d'interaction pour la fenêtre principale de l'application.
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        /// <summary>
        /// Initialise une nouvelle instance de la classe <see cref="MainWindow"/>.
        /// </summary>
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this; // Définit le contexte de données pour le binding
        }

        public double Nb1 { get; set; } // Premier nombre
        public double Nb2 { get; set; } // Deuxième nombre

        private double resultat;
        /// <summary>
        /// Obtient ou définit le résultat de l'opération.
        /// </summary>
        public double Resultat
        {
            get { return resultat; }
            set
            {
                resultat = value;
                OnPropertyChanged(nameof(Resultat)); // Notifie le changement de la propriété
            }
        }

        /// <summary>
        /// Gère l'événement de clic pour l'opération d'addition.
        /// </summary>
        private void butPlus_Click(object sender, RoutedEventArgs e)
        {
            Resultat = Calcul.Addition(Nb1, Nb2);
        }

        /// <summary>
        /// Gère l'événement de clic pour l'opération de soustraction.
        /// </summary>
        private void butMoins_Click(object sender, RoutedEventArgs e)
        {
            Resultat = Calcul.Soustraction(Nb1, Nb2);
        }

        /// <summary>
        /// Gère l'événement de clic pour l'opération de multiplication.
        /// </summary>
        private void butMultiplie_Click(object sender, RoutedEventArgs e)
        {
            Resultat = Calcul.Multiplication(Nb1, Nb2);
        }

        /// <summary>
        /// Gère l'événement de clic pour l'opération de factorielle.
        /// </summary>
        private void butFact_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Resultat = Calcul.Factorielle(Nb1);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erreur", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        /// <summary>
        /// Gère l'événement de clic pour l'opération de division.
        /// </summary>
        private void butDivise_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Resultat = Calcul.Division(Nb1, Nb2);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erreur", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        /// <summary>
        /// Notifie les abonnés qu'une propriété a changé.
        /// </summary>
        /// <param name="name">Le nom de la propriété qui a changé.</param>
        protected void OnPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name)); // Utilisation de l'opérateur null-conditional
        }
    }
}
