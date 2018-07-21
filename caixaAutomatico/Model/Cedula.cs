using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace caixaAutomatico.Model
{
    public class Cedula : Handle
    {
        public int valor { get; set; }
        public int quantidade { get; set; }
        public int quantidademinima { get; set; }
    }
}