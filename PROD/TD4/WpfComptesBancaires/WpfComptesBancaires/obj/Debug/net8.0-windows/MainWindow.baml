   M S B A M L   `   `   `  ����  WpfComptesBancaires$    WpfComptesBancaires.MainWindow   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Gestion de Compte��5      $	��525��5      $	��350��5       � WindowStartupLocation$ CenterScreen=�5      .��5	      � $��20q�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $��3* �6   .+�5   
   �� $��0��5      $��0��5      $��Center=�5      $��Compte :��5      �� 5   
   -   5         ��Name$ comboComptes��5      $��0��5      $��1��5      $	��200��5      $��30��5       $��10q�5!       �� DisplayMemberPath$ IdCompte��5"       � ToolTip$( "Sélectionnez un compte à gérer.��5$      ��5#      �� *	Comptes+5$      �� 5&   
   $��1��5'      $��0��5(      $��Center=�5)      $��Opération :��5*      �� 5+   
   -   5        $ comboOperation��5,      $��1��5-      $��1��5.      $	��200��5/      $��30��50      $��10q�51      $0 *Sélectionnez une opération à effectuer.��53      ��52      �� *OperationTypes+53      �� 55   
   $��2��56      $��0��57      $��Center=�58      $��Si Virement :��59      �� 5:   
   -   5        $ comboCompteDestinataire��5;      $��2��5<      $��1��5=      $	��200��5>      $��30��5?      $��10q�5@      $0 *Sélectionnez une opération à effectuer.��5B      ��5A      �� *	Comptes+5B      �� 5D   
   $��3��5E      $��0��5F      $��Center=�5G      $��	Montant :��5H      �� 5I   
   -   5         ��Name$ textMontant��5J      $��3��5K      $��1��5L      $	��200��5M      $��30��5N      $��10q�5O      $�� ��5P       �� TextWrapping$
 Wrap=�5Q      $+ %Saisissez le montant de l'opération.��5R      �� 5T   
   -   5        	 ��Name$	 boutonValider��5U      $��4��5V      $��1��5W      $	��150��5X      $��30��5Y      $
��10pxq�5Z      $��Center=�5[      $��Valider��5]      $( "Cliquez pour valider l'opération.��5^      5_      5`      