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
    public class Login : Handle
    {
        public string SelectUsuario { get; private set; }
        public Usuario UsuarioLogin { get; private set; }

        public Usuario GetUsuarioSenha(string LoginUsuario, string Senha)
        {
            try
            {
                var conexao = ConexaoMysql.getConexao();
                SelectUsuario = "SELECT * FROM `usuario` WHERE `LOGIN` = @LOGIN AND `SENHA` = @SENHA";

                var comando = new MySqlCommand("", conexao);
                comando.CommandText = SelectUsuario;

                //MD5Encrypt pass = new MD5Encrypt();
                //var senhaMD5 = pass.CriptografiaMD5(Senha);

#pragma warning disable CS0618 // Type or member is obsolete
                comando.Parameters.Add("@LOGIN", LoginUsuario);
                comando.Parameters.Add("@SENHA", Senha);
#pragma warning restore CS0618 // Type or member is obsolete

                var LinhaLogin = comando.ExecuteReader();
                var UsuarioLogin = new Usuario();

                while (LinhaLogin.Read())
                {
                    UsuarioLogin.handle = Convert.ToInt32(LinhaLogin["HANDLE"]);
                    UsuarioLogin.LoginUsuario = LinhaLogin["LOGIN"].ToString();
                    UsuarioLogin.Senha = LinhaLogin["SENHA"].ToString();
                }
                return UsuarioLogin;
            }
            catch
            {
                throw;
            }
            finally{
                ConexaoMysql.fecharConexao();
            }
        }
    }
}