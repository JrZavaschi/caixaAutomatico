using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using caixaAutomatico.Model;
using System.Collections;
using System.Collections.Generic;

namespace caixaAutomatico.Controller
{
    public class EfetuarSaqueCtrl
    {
        private Saque SaqueEfetuado;
        private Saque Cedula;
        public List<Cedula> notasDisponiveis;

        public string InsertSaque { get; private set; }
        public string SelectCedulas { get; private set; }
        public void GravarDados(int valor, int conta)
        {
            try
            {
                var conexao = ConexaoMysql.getConexao();
                InsertSaque = "INSERT INTO `saque`(`VALOR`, `CONTA`, `DATAHORA`, `AUTORIZADO`) VALUES (@VALOR, @CONTA, now(), true)";

                var comando = new MySqlCommand("", conexao);
                comando.CommandText = InsertSaque;


#pragma warning disable CS0618 // Type or member is obsolete
                comando.Parameters.Add("@VALOR", valor);
                comando.Parameters.Add("@CONTA", conta);
#pragma warning restore CS0618 // Type or member is obsolete

                var ExecutaSaque = comando.ExecuteReader();

                var SaqueEfetuado = new Saque();


            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                ConexaoMysql.fecharConexao();
            }
        }
        public void ContarCedulas(int valor)
        {
            try
            {
                var conexao = ConexaoMysql.getConexao();
                SelectCedulas = "";

                var comando = new MySqlCommand("SELECT `HANDLE`, `VALOR`, `QUANTIDADE`, `QUANTIDADEMINIMA` FROM `cedula` WHERE QUANTIDADE > QUANTIDADEMINIMA", conexao);
                comando.CommandText = SelectCedulas;

                var SelecionaCedulas = comando.ExecuteReader();

                //ArrayList Cedulas = new ArrayList();

                var cedulaSelecionada = new CedulaSelecionada();

                while (SelecionaCedulas.Read())
                {
                    cedulaSelecionada.Valor = Convert.ToInt32(SelecionaCedulas["VALOR"];
                    cedulaSelecionada.Quantidade = Convert.ToInt32(SelecionaCedulas["QUANTIDADE"];
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Cedula> Sacar(double valor)
        {
            Cedula notaEmitida = new Cedula() { valor = 0 };
            List<Cedula> notas = new List<Cedula>();
            var valorRestante = valor;
            while (valorRestante > 0)
            {
                notaEmitida = notasDisponiveis.OrderByDescending(x => x.valor).FirstOrDefault(x => x.valor <= valorRestante);
                
                    throw new Exception("Não há notas disponíveis para realizar este saque.");
                
                valorRestante = valorRestante - notaEmitida.valor;
                notas.Add(notaEmitida);
            }

            return notas;
        }
    }
}