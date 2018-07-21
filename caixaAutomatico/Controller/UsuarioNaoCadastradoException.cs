using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Controller
{
    public class UsuarioNaoCadastradoException:Exception
    {
        public UsuarioNaoCadastradoException()
        {

        }
        public UsuarioNaoCadastradoException(string message) : base(message)
        {

        }
        public UsuarioNaoCadastradoException(string message, Exception inner) : base(message, inner)
        {

        }

    }
}