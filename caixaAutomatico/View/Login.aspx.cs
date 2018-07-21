using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using caixaAutomatico.Model;
using caixaAutomatico.Controller;
using System.Web.Security;

namespace caixaAutomatico.View
{
    public partial class Login : System.Web.UI.Page
    {
        private LoginCtrl _LoginCtrl;
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }
        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            _LoginCtrl = new LoginCtrl();
            var LoginUsuarioTxt = TxtLogin.Text;
            var SenhaUsuarioTxt = TxtSenha.Text;
            
            try
            {
                var usuario = _LoginCtrl.GetUsuarioLogin(LoginUsuarioTxt, SenhaUsuarioTxt);
                FormsAuthentication.RedirectFromLoginPage(LoginUsuarioTxt, false);

            }
            catch (UsuarioNaoCadastradoException)
            {
                LblRetornoLogin.Text = "Usuário e/ou senha inválidos, tente novamente!";
            }
            catch (Exception)
            {
                LblRetornoLogin.Text = "Oops ocorreu um erro inesperado!";
            }
        }
    }
}