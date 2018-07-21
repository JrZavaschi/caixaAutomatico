using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Model
{
    public class ContaPessoa : Handle
    {
        public string Agencia { get; set; }
        public string Conta { get; set; }
        public string Senha { get; set; }

        internal object GetContaAgenciaSenha(string Conta, string Agencia, string Senha)
        {
            throw new NotImplementedException();
        }
    }
}