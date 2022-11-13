<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estadistica.aspx.cs" Inherits="Tarea4.Estadistica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
    background-color:  #9CD7FC
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
            font-size: xx-large;
        }
        .auto-style14 {
            height: 26px;
            text-align: center;
        }
        .auto-style15 {
            text-align: center;
            font-size: xx-large;
            width: 694px;
        }
        .auto-style16 {
            height: 26px;
            width: 694px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style17 {
            width: 694px;
        }
        .auto-style18 {
            font-size: x-large;
        }
        </style>
</head>
<body>
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
    <table class="auto-style6">
        <tr>
            <td class="auto-style13" colspan="2">Estadistica pacientes hospitalizados<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Edad</strong><span class="auto-style18"><br />
                <br />
                <asp:Label ID="L13" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="L25" runat="server"></asp:Label>
                <br />
                </span>
                <br />
                <asp:Label ID="L30" runat="server" CssClass="auto-style18"></asp:Label>
                <br />
            </td>
            <td class="auto-style13"><strong>Genero<br />
                <br />
                </strong><span class="auto-style18">
                <asp:Label ID="Lmasculino" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Lfemenino" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                </span></td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Asegurados<br />
                <br />
                </strong><span class="auto-style18">
                <asp:Label ID="LSegSi" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="LSegNo" runat="server"></asp:Label>
                </span></td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
