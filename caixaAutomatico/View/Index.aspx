<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="caixaAutomatico.View.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caixa Automático</title>
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
                    <div class="col-sm-8 offset-2">
                        <h2>Read-me</h2>
                        <p>Para navegar na aplicação, clique no ícone do menu acima!</p>
                        <div class="card">
                            <div class="card-body">
                                <h4>Manutenção de cédula</h4>
                                <p>Em Login, é possível acessar o painel de manutenção das cédulas, efetuando autenticação com Login e Senha.</p>
                                <p>O item Manutenção no menu somente será acessado após efetuar login.</p>
                                <p>
                                    Exemplo de autenticação de login:
                                    <br />
                                    <strong>Login: admin</strong>
                                    <br />
                                    <strong>Senha: admin</strong>
                                </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4>Efetuar saque</h4>
                                <p>
                                    No item Saque, é possível acessar a tela de usuário a efetuar o saque em valores inteiros, a interface do cliente.
                                    <br />
                                    Para efetuar o saque, é necessário efetuar a autenticação com os dados de Agência, Conta, Senha (apenas valores inteiros).
                                </p>
                                <p>
                                    Exemplo de autenticação de saque:
                                    <br />
                                    <strong>Agência: 100</strong>
                                    <br />
                                    <strong>Conta: 10</strong>
                                    <br />
                                    <strong>Senha: 123456</strong>
                                </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4>Informações da aplicação</h4>
                                <h5>Tecnologias</h5>
                                <p>- ASP.NET
                                <br />- C#
                                <br />- MySQL
                                <br />- JavaScript
                                <br />- HTML5</p>
                                <h5>Frameworks</h5>
                                <p>Bootstrap 4.x in NuGet</p> 
                                <h5>Estrutura</h5>
                                <p>MVC</p>
                            </div>
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
