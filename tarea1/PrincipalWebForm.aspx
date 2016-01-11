<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalWebForm.aspx.cs" Inherits="tarea1.PrincipalWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro de Cuentas</title>
    <link rel ="stylesheet" href ="\css\estilos.css" />
    <style type="text/css">
        #Cuentasform {
            height: 208px;
        }
    </style>
</head>
<body>
    <header> 
        <nav>
            <ul>
                <a href= "#" >Inicio</a> 
                <a href= "#" >Consultar</a>
                <a href= "#" >Informacion</a>
            </ul>
        </nav>
    </header>
    <form id="Cuentasform" runat="server">
        <div class="Registro">
        <label for="cuentaid">CuentasId</label> <br />
        <asp:TextBox ID="CuentaIdTextBox" runat="server" Width="201px" placeholder="Escribe el Id"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
        <br />
        <label>Descripcion</label> <br />
            <asp:TextBox ID="DescripcionTextBox" runat="server" Width="260px" placeholder="Escribe una Descripcion"></asp:TextBox>
        <br />
        <label>Balance</label> <br />
        <asp:TextBox ID="BalanceTextBox" runat="server" Width="261px" placeholder="Escribe un Balance"></asp:TextBox>
        <br />
        <p>
            <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" Width="85px" />
            <asp:Button ID="ModificarButton" runat="server" Text="Modificar" Width="92px" />
            <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="85px" />
        </p>
        </div>
    </form>

    <footer>
    </footer>
        <p class="NombreMio" id="Nombre"> Edwin Hidalgo </p>
    </body>

</html>
