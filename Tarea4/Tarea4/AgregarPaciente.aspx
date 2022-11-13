<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="Tarea4.AgregarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Paciente</title>
    <style type="text/css">
        body {
    background-color:   #466AF0
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style10 {
            color: #FFFFFF;
            height: 30px;
            width: 689px;
            text-align: left;
        }
        .auto-style12 {
            color: #FFFFFF;
            height: 30px;
            text-align: right;
        }
        .auto-style8 {
            font-family: "Lucida Calligraphy";
            color: #FFFFFF;
            font-size: xx-large;
            background-color: #0066FF;
            text-align: left;
            width: 689px;
        }
        .auto-style9 {
            font-size: xx-large;
            text-align: left;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
            font-size: large;
        }
        .auto-style16 {
            text-align: center;
            font-size: large;
        }
        </style>
</head>
<body style="height: 661px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6" style="background-color: #0066FF">
                <tr>
                    <td class="auto-style10" style="background-color: #0033CC"><strong>&nbsp;EL MEJOR HOSPITAL DE LA CIUDAD</strong></td>
                    <td class="auto-style12" style="background-color: #0033CC"><strong>CONTACTENOS&nbsp; </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Hospital.UH </strong></td>
                    <td class="auto-style9" style="background-color: #0066FF">
                        <asp:Menu ID="Menu1" runat="server" BackColor="#0066FF" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#284E98" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
                            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <Items>
                                <asp:MenuItem Text="SERVICIOS" Value="SERVICIOS">
                                    <asp:MenuItem Text="PACIENTES" Value="PACIENTES">
                                        <asp:MenuItem Text="AGREGAR PACIENTES" Value="AGREGAR PACIENTES"></asp:MenuItem>
                                        <asp:MenuItem Text="LISTAR PACIENTES" Value="LISTAR PACIENTES"></asp:MenuItem>
                                        <asp:MenuItem Text="ESTADISTICAS" Value="ESTADISTICAS"></asp:MenuItem>
                                    </asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticSelectedStyle BackColor="#507CD1" />
                        </asp:Menu>
                        
                    </td>
                </tr>
            </table>
        </div>
        <p class="auto-style13">
            &nbsp;</p>
        <p class="auto-style15">
            Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Tcedula" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style15">
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Tnombre" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style15">
            Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Tedad" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style15">
            Genero:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Dgenero" runat="server">
                <asp:ListItem>M</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style15">
            Telefono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Ttelefono" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style15">
            Asegurado:&nbsp;&nbsp;
            <asp:RadioButton ID="RBseguro" runat="server" GroupName="as" Text="Si" />
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="as" Text="No" />
        </p>
        <p class="auto-style15">
            Direccion:&nbsp;&nbsp;
        </p>
        <p class="auto-style15">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Provincia:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Dprovincia" runat="server">
                <asp:ListItem>San Jose</asp:ListItem>
                <asp:ListItem>Heredia</asp:ListItem>
                <asp:ListItem>Alajuela</asp:ListItem>
                <asp:ListItem>Cartago</asp:ListItem>
                <asp:ListItem>Limon</asp:ListItem>
                <asp:ListItem>Guanacaste</asp:ListItem>
                <asp:ListItem>Puntarenas</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style15">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Canton:&nbsp;&nbsp;
            <asp:TextBox ID="Tcanton" runat="server" Width="240px"></asp:TextBox>
        </p>
        <p class="auto-style15">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Distrito:&nbsp;&nbsp;
            <asp:TextBox ID="Tdistrito" runat="server" Width="240px"></asp:TextBox>
        </p>
        <p class="auto-style16">
            <asp:Label ID="Lconfirm" runat="server"></asp:Label>
        </p>
        <div class="auto-style13">
            <asp:Button ID="Bagregar" runat="server" Height="40px" OnClick="Bagregar_Click" Text="Agregar" Width="100px" />
&nbsp;<asp:Button ID="Bvolver" runat="server" Height="40px" OnClick="Bvolver_Click" Text="Volver" Width="100px" />
&nbsp;<asp:Button ID="Bnewpaciente" runat="server" Height="40px" OnClick="Bnewpaciente_Click" Text="Agregar Nuevo" />
        </div>
    </form>
</body>
</html>
