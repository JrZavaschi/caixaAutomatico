using System;
using System.Web.UI.WebControls;
using caixaAutomatico.Model;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace caixaAutomatico.View
{
    public partial class Manutencao : System.Web.UI.Page
    {
        private string updateGridCedulas;

        public object EditarLabel { get; private set; }
        public string selectGridCedulas { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowDataGridCedulas();
            }
        }
        protected void ShowDataGridCedulas()
        {
            ConexaoMysql conexao = new ConexaoMysql();

            selectGridCedulas = "SELECT `HANDLE`, `VALOR`, `QUANTIDADE`, `DATAHORA`, `QUANTIDADEMINIMA` FROM `cedula`";

            MySqlCommand comando = new MySqlCommand(selectGridCedulas, ConexaoMysql.getConexao());

            DataTable tabela = new DataTable();
            GridCedulas.DataSource = comando.ExecuteReader();
            GridCedulas.DataBind();

            ConexaoMysql.fecharConexao();
        }

        protected void GridCedulas_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridCedulas.EditIndex = e.NewEditIndex;
            ShowDataGridCedulas();
        }
        protected void GridCedulas_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            Label id = GridCedulas.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            TextBox QuantidadeMinima = GridCedulas.Rows[e.RowIndex].FindControl("txt_QuantidadeMinima") as TextBox;
            TextBox Quantidade = GridCedulas.Rows[e.RowIndex].FindControl("txt_Quantidade") as TextBox;

            ConexaoMysql conexao = new ConexaoMysql();

            updateGridCedulas = "UPDATE `cedula` SET QUANTIDADE = '" + Quantidade.Text + "', QUANTIDADEMINIMA = '" + QuantidadeMinima.Text + "', DATAHORA = now() WHERE HANDLE = " + Convert.ToInt32(id.Text);

            MySqlCommand comando = new MySqlCommand(updateGridCedulas, ConexaoMysql.getConexao());
            comando.ExecuteNonQuery();
            ConexaoMysql.fecharConexao();
 
            GridCedulas.EditIndex = -1;
            ShowDataGridCedulas();
        }
        protected void GridCedulas_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridCedulas.EditIndex = -1;
            ShowDataGridCedulas();
        }
    }
}