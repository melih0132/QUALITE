   M S B A M L   `   `   `  ����  WpfVirement    WpfVirement.MainWindow   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � Title$  Virement��5      $	��800��5      $	��450��5         MaterialDesignPaper#���   5	       � WindowStartupLocation$ CenterScreen=�5
      .��5      � $��
20,20,0,20q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��1��5      $��
20,30,20,0q�5      $	��Top=�5      .+�5      �� $
��0,10q�6    �� Orientation$ 
Horizontal=�6'   .+�5      �� $	��150��5      $��Center=�5      $��Compte à debiter��5      $��14(�5      $
��Bold"�6#   �� 5      $	��250��5      $��	280,0,0,0q�5       $��Center=�5!       �� DisplayMemberPath$ IdCompte��5$      ��5"      �� *	Comptes+ �� SelectedItem 5#      �� *CompteDebit+5'      5(      �� 5*      $
��0,10q�6   $ 
Horizontal=�6'   .+�5+      �� $	��150��5,      $��Center=�5-      $��Compte à crediter��5.      $��14(�5/      $��0,50,0,0q�6#   $
��Bold"�65   �� 50      $	��250��51      $��
280,50,0,0q�52      $ IdCompte��55      $��Center=�56      ��53      �� *	Comptes+ 54      �� *CompteCredit+57      58      �� 5:      $
��0,10q�6   $ 
Horizontal=�6'   .+�5;      �� $	��150��5<      $��Center=�5=      $��Montant��5>      $��14(�5?      $��0,50,0,0q�6#   $
��Bold"�65   �� 5@      $	��250��5B      $��
280,50,0,0q�5C      $��Center=�5D      ��5A      �� *
Resultat+5D      5E      5F      �� 5H   
   $��2��5I      $
��0,20q�5J      $��Center=�5K      $ 
Horizontal=�5L      .+�5M      �� -   5         ��Name$ 	btValider��5M      $	��260��5N      $��27��5O      $��10q�5P      $��Valider��5R      $��14(�5S      $
��Bold"�5T      
�������5U   $   �� 5V      -   5        $ 	btAnnuler��5V      $	��285��5W      $��30��5X      $��10q�5Y      $��Annuler��5[      $��14(�5\      $
��Bold"�5]      
�������5^   $   5_      5`      5a      