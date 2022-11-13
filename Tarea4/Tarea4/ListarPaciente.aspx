<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPaciente.aspx.cs" Inherits="Tarea4.ListarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
    background-color:  cornflowerblue
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
        .auto-style15 {
            font-size: large;
        }
        .auto-style17 {
            font-size: large;
            text-align: center;
            height: 100px;
        }
        .auto-style19 {
            font-size: xx-large;
            text-align: center;
            height: 100px;
            width: 689px;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            width: 689px;
        }
        .auto-style22 {
            width: 100%;
            position: fixed;
            left: 12px;
            top: 160px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style20">
        <div>
            <table class="auto-style6" style="background-color: #0066FF">
                <tr>
                    <td class="auto-style10" style="background-color: #0033CC"><strong>&nbsp;EL MEJOR HOSPITAL DE LA CIUDAD</strong></td>
                    <td class="auto-style12" style="background-color: #0033CC"><strong>CONTACTENOS&nbsp; </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Hospital.UH </strong></td>
                    <td class="auto-style9" style="background-color: #0066FF">
                        &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#0066FF" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#284E98" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick" >
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
            <br />
            <table class="auto-style22">
                <tr>
                    <td class="auto-style19"><strong>Pacientes ingresados<br />
                        </strong></td>
                    <td class="auto-style17"><strong>Nombre del paciente a buscar o eliminar:&nbsp; </strong>
                        <asp:TextBox ID="Tnombuscar" runat="server" Height="18px" Width="235px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Bbuscar" runat="server" Height="35px" OnClick="Bbuscar_Click" Text="Buscar" Width="100px" />
&nbsp;<asp:Button ID="BLimpiarBusqueda" runat="server" Height="35px" OnClick="BLimpiarBusqueda_Click" Text="Limpiar busqueda" Width="100px" />
&nbsp;<asp:Button ID="Bborrar" runat="server" Height="35px" OnClick="Bborrar_Click" Text="Borrar" Width="100px" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style15" ForeColor="Black" Height="100px" HorizontalAlign="Center" Width="688px">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Montrar Todos" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ocultar" />
&nbsp;
                    </td>
                    <td class="auto-style20">
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="167px" HorizontalAlign="Center" Width="661px">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="auto-style20">
            &nbsp;</p>
        <p class="auto-style20">
            &nbsp;</p>
        <p class="auto-style20">
            &nbsp;</p>
        <p class="auto-style20">
            &nbsp;</p>
        <p class="auto-style20">
            <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Volver" Width="100px" />
        </p>
    </form>
</body>
</html>
