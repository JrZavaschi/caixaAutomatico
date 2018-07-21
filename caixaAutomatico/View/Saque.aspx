<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Saque.aspx.cs" Inherits="caixaAutomatico.View.Saque" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caixa Automático - Efetuar Saque</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Style.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <section>
        <header>
            <% Response.WriteFile("Header.aspx"); %>
        </header>
        <form id="form1" runat="server">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-sm-5 offset-sm-3">
                        <div class="col-sm-12">
                            <h3 class="text-center">Efetuar saque</h3>
                        </div>
                        <div class="col-sm-12">
                            <label>Agência:</label>
                            <asp:TextBox  ID="TxtAgencia" runat="server" TextMode="Number" CssClass="form-control" placeholder="000"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <label>Conta:</label>
                             <asp:TextBox ID="TxtConta" runat="server" TextMode="Number" CssClass="form-control" placeholder="000000"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <label>Senha:</label>
                             <asp:TextBox ID="TxtSenha" runat="server" TextMode="Password" CssClass="form-control" placeholder="*******"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <label>Valor:</label>
                             <asp:TextBox ID="TxtValor" runat="server" TextMode="Number" CssClass="form-control" placeholder="R$"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <br />
                            <asp:Button ID="BtnConfirmarSaque" runat="server" Text="Confirmar" CssClass="btn btn-info" OnCLick="BtnConfirmarSaque_Click" />
                            <br />
                            <asp:Label ID="LblRetornoSaque" runat="Server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <footer>
            <% Response.WriteFile("Footer.aspx"); %>
        </footer>
    </section>
    <!-- Scripts JS -->
    <script src="../scripts/jquery-3.0.0.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/Script.js"></script>
</body>
</html>
