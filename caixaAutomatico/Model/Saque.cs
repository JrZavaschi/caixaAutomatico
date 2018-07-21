using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using caixaAutomatico.Model;

namespace caixaAutomatico.Model
{
    public class Saque:Handle
    {
        public int Valor { get; set; }
        public int Conta { get; set; }
        public int Autorizado { get; set; }
        public DateTime DataHora { get; set; }
        public string SelectAgenciaConta { get; private set; }

        public ContaPessoa GetContaAgenciaSenha(string Conta, string Agencia, string Senha)
        {
            try
            {
                var conexao = ConexaoMysql.getConexao();
                SelectAgenciaConta = "SELECT A.HANDLE, B.CONTA, C.AGENCIA, D.NOME, A.SENHA FROM `pessoaconta` A INNER JOIN CONTA B ON B.HANDLE = A.CONTA INNER JOIN AGENCIA C ON C.HANDLE = B.AGENCIA INNER JOIN PESSOA D ON D.HANDLE = A.PESSOA WHERE B.CONTA = @CONTA AND C.AGENCIA = @AGENCIA AND A.SENHA = @SENHA";

                var comando = new MySqlCommand("", conexao);
                comando.CommandText = SelectAgenciaConta;

                //MD5Encrypt pass = new MD5Encrypt();
                //var senhaMD5 = pass.CriptografiaMD5(Senha);

#pragma warning disable CS0618 // Type or member is obsolete
                comando.Parameters.Add("@AGENCIA", Agencia);
                comando.Parameters.Add("@CONTA", Conta);
                comando.Parameters.Add("@SENHA", Senha);
#pragma warning restore CS0618 // Type or member is obsolete

                var LinhaAcessoConta = comando.ExecuteReader();
                var ContaPessoa = new ContaPessoa();

                while (LinhaAcessoConta.Read())
                {
                    ContaPessoa.handle = Convert.ToInt32(LinhaAcessoConta["HANDLE"]);
                    ContaPessoa.Agencia = LinhaAcessoConta["AGENCIA"].ToString();
                    ContaPessoa.Conta = LinhaAcessoConta["CONTA"].ToString();
                    ContaPessoa.Senha = LinhaAcessoConta["SENHA"].ToString();
                }
                return ContaPessoa;
            }
            catch
            {
                throw;
            }
            finally
            {
                ConexaoMysql.fecharConexao();
            }
        }
    }

}