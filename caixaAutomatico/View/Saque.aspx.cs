using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using caixaAutomatico.Model;
using caixaAutomatico.Controller;
using static System.Console;

namespace caixaAutomatico.View
{
    public partial class Saque : System.Web.UI.Page
    {
        private SaqueCtrl _SaqueCtrl;
        private ContaPessoa _ContaPessoa;
        private EfetuarSaqueCtrl _EfetuarSaqueCtrl;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConfirmarSaque_Click(object sender, EventArgs e)
        {
            _SaqueCtrl = new SaqueCtrl();

            _ContaPessoa = new ContaPessoa();

            var AgenciaTxt = TxtAgencia.Text;
            var ContaTxt = TxtConta.Text;
            var SenhaTxt = TxtSenha.Text;
            var ValorTxt = TxtValor.Text;

            try
            {
                var Sacar = _SaqueCtrl.GetContaSaque(ContaTxt, AgenciaTxt, SenhaTxt);

                if(Sacar.handle > 0)
                {
                    _EfetuarSaqueCtrl = new EfetuarSaqueCtrl();


                    _EfetuarSaqueCtrl.ContarCedulas(Convert.ToInt32(ValorTxt));

                    var cedulaSelecionada = new CedulaSelecionada();

                    LblRetornoSaque.Text = cedulaSelecionada.Valor + "<br />" + cedulaSelecionada.Quantidade;

                }
                else
                {
                    LblRetornoSaque.Text = "Agencia e/ou conta inválidos, tente novamente!";

                }

            }
            catch (ContaNaoEncontradaException)
            {
                LblRetornoSaque.Text = "Agencia e/ou conta inválidos, tente novamente!";
            }
            catch (Exception)
            {
                LblRetornoSaque.Text = "Oops ocorreu um erro inesperado!";
            }
        }
    }
}