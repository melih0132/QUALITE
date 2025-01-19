using System;
using DataLayer;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BusinessLayer
{
    public class ServiceCompte
    {
        static readonly DataAccess dataAccess = new DataAccess();
        /// <summary>
        /// Récupère la liste de tous les comptes (id et solde) de la base de données
        /// </summary>
        /// <returns>Liste des comptes bancaires</returns>
        public List<Compte>? GetAllComptes()
        {
            List<Compte> comptes = new List<Compte>();

            try
            {
                DataTable dt = dataAccess.GetData("select * from bd_compte_bancaire.compte");

                if (dt == null || dt.Rows.Count == 0)
                {
                    throw new Exception("Aucun compte trouvé dans la base de données.");
                }

                foreach (DataRow row in dt.Rows)
                {
                    try
                    {
                        Compte compte = new Compte();

                        if (row["idcompte"] == DBNull.Value || row["solde"] == DBNull.Value)
                        {
                            throw new Exception("Données manquantes pour un compte.");
                        }

                        compte.IdCompte = Convert.ToInt32(row["idcompte"]);
                        compte.Solde = Convert.ToDouble(row["solde"]);

                        comptes.Add(compte);
                    }
                    catch (Exception innerEx)
                    {
                        throw new Exception("Erreur lors de la création du compte à partir de la ligne de la DataTable.", innerEx);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erreur lors de l'accès aux comptes dans la base de données.", ex);
            }

            return comptes;
        }

        /// <summary>
        /// Met à jour le solde du compte passé en paramètre en fonction du montant passé en paramètre. Si montant<0 => débit, sinon crédit.
        /// </summary>
        /// <param name="compte">Compte à débiter ou créditer</param>
        /// <param name="montant">Montant du débit (si <0) ou crédit (si >0)</param>
        /// <exception cref="Exception">Retourne une exception Problème provenant de la base</exception>
        public void SetDebitCredit(int idCompte, double montant)
        {
            try
            {
                int modif = dataAccess.SetData($"update bd_compte_bancaire.compte set solde = solde + {montant} where idcompte = {idCompte}");
            }
            catch (Exception ex)
            {
                throw new Exception("Erreur lors de l'update sur la base.", ex);
            }
        }
    }
}
