<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manutencao.aspx.cs" Inherits="caixaAutomatico.View.Manutencao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caixa Automático - Manutenção de cédulas </title>
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
                    <div class="col-sm-12">
                        <h3 class="text-center">Manutenção de cédulas</h3>
                    </div>
                    <div class="col-sm-12">
                        &nbsp;
                    </div>
                    <div class="col-sm-12">
                        <asp:GridView ID="GridCedulas" DataKeyNames="HANDLE" EmptyDataText="Não existem dados a exibir." runat="server" CssClass="table table-hover table-responsive-sm" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="GridCedulas_RowCancelingEdit" OnRowEditing="GridCedulas_RowEditing" OnRowUpdating="GridCedulas_RowUpdating">  
                            <Columns>   
                                <asp:TemplateField HeaderText="ID" Visible="false">  
                                    <ItemTemplate>  
                                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("HANDLE") %>'></asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Valor">  
                                    <ItemTemplate>  
                                        <asp:Label ID="lbl_Valor" runat="server" Text='<%#Eval("VALOR") %>'></asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>    
                                <asp:TemplateField HeaderText="Quantidade">  
                                    <ItemTemplate>  
                                        <asp:Label ID="lbl_Quantidade" runat="server" Text='<%#Eval("QUANTIDADE") %>'></asp:Label>  
                                    </ItemTemplate>  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="txt_Quantidade" CssClass="form-control" TextMode="number" runat="server" Text='<%#Eval("QUANTIDADE") %>'></asp:TextBox>  
                                    </EditItemTemplate>  
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="Quantidade mínima">  
                                    <ItemTemplate>  
                                        <asp:Label ID="lbl_QuantidadeMinima" runat="server" Text='<%#Eval("QUANTIDADEMINIMA") %>'></asp:Label>  
                                    </ItemTemplate> 
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="txt_QuantidadeMinima" CssClass="form-control" TextMode="number" runat="server" Text='<%#Eval("QUANTIDADEMINIMA") %>'></asp:TextBox>  
                                    </EditItemTemplate> 
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="Última manutenção">  
                                    <ItemTemplate>  
                                        <asp:Label ID="lbl_UltimaManutencao" runat="server" Text='<%#Eval("DATAHORA") %>'></asp:Label>  
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField>  
                                    <ItemTemplate>  
                                        <asp:Button ID="btn_Edit" runat="server" Text="Editar" CssClass="btn btn-outline-warning" CommandName="Edit" />  
                                    </ItemTemplate>  
                                    <EditItemTemplate>  
                                        <asp:Button ID="btn_Update" runat="server" Text="Salvar" CommandName="Update" CssClass="btn btn-outline-success" />  
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancelar" CommandName="Cancel" CssClass="btn btn-outline-danger" />  
                                    </EditItemTemplate>  
                                </asp:TemplateField>  
                            </Columns>  
                        </asp:GridView> 
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
