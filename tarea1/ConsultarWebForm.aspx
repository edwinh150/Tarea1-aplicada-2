<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarWebForm.aspx.cs" Inherits="tarea1.SQL.ConsultarWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href ="\css\estilos.css" />
    <title>Consultas de Cuentas</title>
</head>
    <header> 
        <nav>
            <ul>
                <a href= "RegistroWebForm.aspx" >Registro</a> 
                <a href= "ConsultarWebForm.aspx" >Consultar</a>
                <a href= "#" >Informacion</a>
            </ul>
        </nav>
    </header>
<body>
    <form id="ConsultarCuentasform" runat="server">
        <div class="Consultar">
            Busqueda por Id <br />
            <asp:TextBox ID="CuentaIdTextBox" runat="server" Width="396px" placeholder="Escribe el Id"></asp:TextBox>
            <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" Text="Buscar" Width="94px" />
        <br />
        </div>
        <div class="ConsultarGrid">
            <asp:GridView ID="ConsultarGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="178px" Width="494px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CuentaId" HeaderText="CuentaId" InsertVisible="False" ReadOnly="True" SortExpression="CuentaId" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CuentasSQLConnectionString %>" SelectCommand="SELECT [CuentaId], [Descripcion], [Balance] FROM [Cuentas]"></asp:SqlDataSource>
    </form>
</body>

    <footer>
        <p class="NombreMio" id="Nombre"> Edwin Hidalgo </p>
    </footer>
</html>
