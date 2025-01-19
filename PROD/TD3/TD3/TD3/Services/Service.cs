using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using TD3;

namespace TD3
{
    public static class Service
    {
        private static readonly string filePath = "./Data/Devises.json";

        public static List<Devise> ChargerDevises()
        {
            try
            {
                if (File.Exists(filePath))
                {
                    string json = File.ReadAllText(filePath);
                    return JsonSerializer.Deserialize<List<Devise>>(json);
                }
                return new List<Devise>();
            }
            catch (Exception ex)
            {
                throw new Exception("Erreur lors du chargement des devises : " + ex.Message);
            }
        }

        public static void SauvegarderDevises(List<Devise> devises)
        {
            try
            {
                string json = JsonSerializer.Serialize(devises);
                File.WriteAllText(filePath, json);
            }
            catch (Exception ex)
            {
                throw new Exception("Erreur lors de la sauvegarde des devises : " + ex.Message);
            }
        }
    }
}
