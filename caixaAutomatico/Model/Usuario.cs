using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Model 
{
    public class Usuario : Handle
    {
        public string LoginUsuario { get; set; }
        public string Senha { get; set; }

        internal object GetUsuarioSenha(string loginUsuario, string senha)
        {
            throw new NotImplementedException();
        }
    }
}