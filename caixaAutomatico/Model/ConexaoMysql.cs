using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace caixaAutomatico.Model
{
    public class ConexaoMysql
    {
        private static MySqlConnection objConexao = null;

        // string mysql acessa o banco do servidor de hospedagem
        private String stringconnection1 = "server=SERVIDORREMOTO;User Id = USUARIO; password=SENHA;database=BDREMOTO;SslMode=none";

        //string mysql rodando na maquina do desenvolvedor.
        private String stringconnection2 = "server=localhost;User Id = root; password=;database=caixa; SslMode=none";
        
        //metodos que abrem a conexao ao bd
        #region
        public void tentarAbrirConexaoLocal()
        {
            objConexao = new MySqlConnection();
            objConexao.ConnectionString = stringconnection1;
            objConexao.Open();
        }

        public void tentarAbrirConexaoRemota()
        {
            objConexao = new MySqlConnection();
            objConexao.ConnectionString = stringconnection2;
            objConexao.Open();
        }
        #endregion

        public ConexaoMysql()
        {
            try
            {
                tentarAbrirConexaoRemota();
            }
            catch
            {
                try
                {
                    tentarAbrirConexaoLocal();
                }
                catch
                {
                    Console.WriteLine("Não foi possível acessar o banco de dados, tente novamente.");
                }
            }
        }

        public static MySqlConnection getConexao()
        {
            new ConexaoMysql();
            return objConexao;
        }
        
        public static void fecharConexao()
        {
            objConexao.Close();
        }

        
    }
}