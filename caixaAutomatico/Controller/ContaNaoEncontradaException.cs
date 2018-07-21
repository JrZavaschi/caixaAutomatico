using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Controller
{
    public class ContaNaoEncontradaException:Exception
    {
        public ContaNaoEncontradaException()
        {

        }
        public ContaNaoEncontradaException(string message) : base(message)
        {

        }
        public ContaNaoEncontradaException(string message, Exception inner) : base(message, inner)
        {

        }
    }
}