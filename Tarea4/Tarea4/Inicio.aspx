<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea4.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Hospital UH</title>
    <style type="text/css">
        body {
    background-color:  #3399FF
}
        .auto-style6 {
            width: 100%;
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
        .auto-style13 {
            text-align: center;
        }
    </style>
</head>
<body style="height: 226px">
    <form id="form1" runat="server">
        <div class="auto-style13">
        <div style="background-color: #0066FF">
            &nbsp;<table class="auto-style6" style="background-color: #0066FF">
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
        &nbsp;</div>
        </div>
        <p class="auto-style13">
            &nbsp;</p>
        <p class="auto-style13">
            &nbsp;</p>
        <p class="auto-style13">
            <asp:Image ID="Image1" runat="server" Height="396px" ImageUrl="~/Images/bien.png" Width="1286px" />
        </p>
    </form>
</body>
</html>
