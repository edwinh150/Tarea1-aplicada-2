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
            <asp:GridView ID="ConsultarGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="178px" Width="494px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CuentaId" HeaderText="CuentaId" InsertVisible="False" ReadOnly="True" SortExpression="CuentaId" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            </div>
    </form>
</body>

    <footer>
        <p class="NombreMio" id="Nombre"> Edwin Hidalgo </p>
    </footer>
</html>
