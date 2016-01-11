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
            <label for="cuentaid">CuentasId</label> <br />
            <asp:TextBox ID="CuentaIdTextBox" runat="server" Width="201px" placeholder="Escribe el Id"></asp:TextBox>
        <br />
        </div>
    </form>
</body>

    <footer>
        <p class="NombreMio" id="Nombre"> Edwin Hidalgo </p>
    </footer>
</html>
