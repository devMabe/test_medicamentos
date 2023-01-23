<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicamentoWeb.aspx.cs" Inherits="test_medicamentos.MedicamentoWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 126px;
        }
        .auto-style2 {
            width: 260px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 126px;
            height: 26px;
        }
        .auto-style5 {
            width: 260px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 126px;
            height: 52px;
        }
        .auto-style8 {
            width: 260px;
            height: 52px;
        }
        .auto-style9 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">Nombre</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Fecha Recibo</td>
                    <td class="auto-style8">YY<asp:TextBox ID="Year" runat="server" Width="58px"></asp:TextBox>
                        --MM<asp:TextBox ID="Mount" runat="server" Width="16px"></asp:TextBox>
                        --DD<asp:TextBox ID="Day" runat="server" Width="16px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Valor</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="valor" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style1">Cantidad</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="cantidad" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" Width="129px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="mensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
