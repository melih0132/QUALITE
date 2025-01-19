using System.Text;
using BusinessLayer;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Collections.ObjectModel;
using System.Numerics;
using System.Reflection.Metadata;

namespace WpfComptesBancaires
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public ObservableCollection<string> OperationTypes { get; set; }
        public ObservableCollection<Compte> Comptes { get; set; }
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this;
            ServiceCompte serviceCompte = new ServiceCompte();

            OperationTypes = new ObservableCollection<string> { "Retrait", "Depot" };

            Comptes = new ObservableCollection<Compte>(serviceCompte.GetAllComptes());
            Console.WriteLine(serviceCompte.GetAllComptes().Count());
            
        }

        private void boutonValider_Click(object sender, RoutedEventArgs e)
        {
            string montant = textMontant.Text;
            string operation = comboOperation.Text;
            string compte = comboComptes.Text;


            double number;
            int idCompte;

            if (montant != "" && compte != "" && operation != "" && double.TryParse(montant, out number) && int.TryParse(compte, out idCompte))
            {
                ServiceCompte service = new ServiceCompte();
                if (operation == "Depot")
                {
                    service.SetDebitCredit(idCompte, number);
                }
                else
                {
                    number = -number;
                    service.SetDebitCredit(idCompte, number);
                }

                MessageBox.Show($"{operation} effectué", "Affichage pour tester", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else { MessageBox.Show("ça a pas marché pelo", "Affichage pour tester", MessageBoxButton.OK, MessageBoxImage.Error); }
        }
    }
}