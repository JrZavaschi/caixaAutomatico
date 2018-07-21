using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using caixaAutomatico.Model;

namespace caixaAutomatico.Controller
{
    public class SaqueCtrl
    {
        private Saque _Saque;
        public ContaPessoa GetContaSaque(string Conta, string Agencia, string Senha)
        {
            _Saque = new Saque();

            var contaAcessada = _Saque.GetContaAgenciaSenha(Conta, Agencia, Senha);

            if (contaAcessada.handle <= 0)
            {
                throw new ContaNaoEncontradaException();
            }
            else
            {
                return contaAcessada;
            }

        }
    }
}