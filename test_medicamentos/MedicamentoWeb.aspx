<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicamentoWeb.aspx.cs" Inherits="test_medicamentos.MedicamentoWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style10 {
            width: 100%;
            height: 292px;
        }
        .auto-style11 {
             width: 303px;
         }
        .auto-style12 {
            width: 341px;
        }
      
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form" class="form-control" runat="server">
        <div>

            <table class="auto-style3" >
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
                        --MM<asp:TextBox ID="Mount" runat="server" Width="24px"></asp:TextBox>
                        --DD<asp:TextBox ID="Day" runat="server" Width="20px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Valor</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="valor" runat="server" CssClass="CssClass="></asp:TextBox>
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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" Width="129px" class="btn-primary"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <table class="auto-style10">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:GridView ID="grilla" CssClass="table table-striped" runat="server" Height="151px" OnSelectedIndexChanged="grilla_SelectedIndexChanged" Width="312px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">ID:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEditar" class="btn-primary" runat="server" OnClick="btnEditar_Click" Text="Editar" Width="129px"/>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;
                    <a href="About.aspx">Inicio</a>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
