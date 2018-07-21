<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="caixaAutomatico.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caixa Automático - Login</title>
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
                            <h3 class="text-center">Login</h3>
                        </div>
                        <div class="col-sm-12">
                            <label>Usuário:</label>
                            <asp:TextBox ID="TxtLogin" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <label>Senha:</label>
                             <asp:TextBox ID="TxtSenha" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-12">
                            <br />
                            <asp:Button ID="BtnEntrar" runat="server" Text="Entrar" CssClass="btn btn-info float-right" OnCLick="BtnEntrar_Click" />
                            <asp:Label ID="LblRetornoLogin" runat="Server"></asp:Label>
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
