<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalWebForm.aspx.cs" Inherits="tarea1.PrincipalWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:TextBox ID="CuentaIdTextBox" runat="server" Width="201px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
        <p>
            <asp:TextBox ID="DescripcionTextBox" runat="server" Width="199px"></asp:TextBox>
        </p>
        <asp:TextBox ID="BalanceTextBox" runat="server" Width="198px"></asp:TextBox>
        <p>
            <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" />
            <asp:Button ID="ModificarButton" runat="server" Text="Modificar" />
            <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" />
        </p>
    </form>
</body>

</html>
