using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Controller
{
    public class ValorIncompativelException : Exception
    {
        public ValorIncompativelException()
        {

        }
        public ValorIncompativelException(string message) : base(message)
        {

        }
        public ValorIncompativelException(string message, Exception inner) : base(message, inner)
        {

        }
    }
}