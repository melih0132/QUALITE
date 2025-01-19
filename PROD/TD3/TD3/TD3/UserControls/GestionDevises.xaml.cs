using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Collections.Generic; // Import nécessaire pour la conversion en List
using System.Linq;
using TD3;
using MaterialDesignThemes.Wpf.Internal;

namespace TD3.UserControls
{
    public partial class GestionDevises : UserControl
    {
        private ObservableCollection<Devise> devises;

        public GestionDevises()
        {
            InitializeComponent();
            devises = new ObservableCollection<Devise>(Service.ChargerDevises());
            DeviseListView.ItemsSource = devises;
        }

        private void AjouterDevise_Click(object sender, RoutedEventArgs e)
        {
            if (double.TryParse(TauxTextBox.Text, out double taux) && !string.IsNullOrEmpty(NomDeviseTextBox.Text))
            {
                if (devises.Any(d => d.NomDevise.Equals(NomDeviseTextBox.Text, StringComparison.OrdinalIgnoreCase)))
                {
                    MessageBox.Show("Cette devise existe déjà dans la liste.", "Erreur", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                devises.Add(new Devise { NomDevise = NomDeviseTextBox.Text, Taux = taux });
                Service.SauvegarderDevises(new List<Devise>(devises));
            }
            else
            {
                MessageBox.Show("Veuillez entrer un nom de devise valide et un taux de conversion.", "AJOUT", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void SupprimerDevise_Click(object sender, RoutedEventArgs e)
        {
            if (DeviseListView.SelectedItem is Devise selectedDevise)
            {
                devises.Remove(selectedDevise);
                Service.SauvegarderDevises(new List<Devise>(devises));
            }
            else
            {
                MessageBox.Show("Veuillez sélectionner une devise à supprimer.", "DEVISE", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void MettreAJourJSON_Click(object sender, RoutedEventArgs e)
        {
            if (devises.Count == 0)
            {
                MessageBox.Show("Aucune devise à sauvegarder. Veuillez ajouter des devises avant de mettre à jour le fichier JSON.", "DEVISE", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                Service.SauvegarderDevises(new List<Devise>(devises));
                MessageBox.Show("Le fichier JSON a été mis à jour avec succès.", "JSON", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}
