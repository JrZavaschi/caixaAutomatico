using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using caixaAutomatico.Model;

namespace caixaAutomatico.Controller
{
    public class LoginCtrl
    {
        private Login _Login;
        public Usuario GetUsuarioLogin(string LoginUsuario, string Senha)
        {
            _Login = new Login();

            var usuarioLogado = _Login.GetUsuarioSenha(LoginUsuario, Senha);

            if (usuarioLogado == null)
            {
                throw new UsuarioNaoCadastradoException();
            }
            else
            {
                return usuarioLogado;
            }

        }
    }
}